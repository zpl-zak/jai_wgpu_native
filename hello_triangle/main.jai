#import "Basic";
#import "SDL";
#import "Math";
wgpu :: #import "wgpu";

#load "helpers.jai";

WINDOW_WIDTH  :: 1280;
WINDOW_HEIGHT :: 720;

wgpu_log_callback :: (level: wgpu.LogLevel, msg: *u8) #c_call {
    print_c("[WGPU :: %]: %\n", level, to_string(msg));
}

Vertex :: struct {
    position: Vector3;
    color: Vector3;
}

SHADER :: #string WGSL
    struct VertexInput {
        @location(0) position: vec3<f32>,
        @location(1) color: vec3<f32>,
    };

    struct VertexOutput {
        @builtin(position) clip_position: vec4<f32>,
        @location(0) color: vec3<f32>,
    };

    @stage(vertex)
    fn vertex(model: VertexInput) -> VertexOutput {
        var out: VertexOutput;
        out.clip_position = vec4<f32>(model.position, 1.0);
        out.color = model.color;
        return out;
    }

    @stage(fragment)
    fn fragment(in: VertexOutput) -> @location(0) vec4<f32> {
        return vec4<f32>(in.color, 1.0);
    }
WGSL;

VERTICES :: Vertex.[
    .{ position=.{0.0, 0.5, 0.0}, color=.{1.0, 0.0, 0.0} },
    .{ position=.{-0.5, -0.5, 0.0}, color=.{0.0, 1.0, 0.0} },
    .{ position=.{0.5, -0.5, 0.0}, color=.{0.0, 0.0, 1.0} },
];

main :: () {
    SDL_Init(SDL_INIT_VIDEO);

    window := SDL_CreateWindow("Jai WGPU", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, WINDOW_WIDTH, WINDOW_HEIGHT, SDL_WINDOW_ALLOW_HIGHDPI);
    assert(window != null, "Could not create window: %\n", to_string(SDL_GetError()));

    wgpu.SetLogCallback(wgpu_log_callback);
	wgpu.SetLogLevel(.Error);

    surface := create_surface(window);
    assert(surface != null, "Surface is not created correctly");

    adapter := request_adapter(surface, powerPreference = .HighPerformance);
    assert(adapter != null, "Adapter is not created correctly");

    device := request_device(adapter);
    assert(device != null, "Device is not created correctly");

    wgpu.DeviceSetDeviceLostCallback(device, (reason: wgpu.DeviceLostReason, msg: *u8, user_data: *void) #c_call {
        print_c("Device Lost: %s\n", to_string(msg));
    }, null);
    
    wgpu.DeviceSetUncapturedErrorCallback(device, (type: wgpu.ErrorType, msg: *u8, user_data: *void) #c_call {
        print_c("Uncaptured Error (%d): %s\n", type, to_string(msg));
    }, null);

    queue := wgpu.DeviceGetQueue(device);
    assert(queue != null, "Queue is not created correctly");

    shader := create_shader(device, SHADER);
    assert(shader != null, "Shader is not created correctly");

    vertex_buffer, vertex_buffer_size := vertex_array_to_buffer(device, queue, VERTICES);

    pipeline := create_pipeline(surface, adapter, device, shader, Vertex);
    assert(pipeline != null, "Pipeline is not created correctly");

    swapchain := create_swapchain(surface, adapter, device, WINDOW_WIDTH, WINDOW_HEIGHT);

    wgpu.QueueSubmit(queue, 0, null);

    exit := false;
    while !exit {
        event: SDL_Event;
        while SDL_PollEvent(*event) {
            if event.type == SDL_QUIT {
                exit = true;
            }
        }

        current_view := wgpu.SwapChainGetCurrentTextureView(swapchain);

		cmd_encoder := wgpu.DeviceCreateCommandEncoder(
			device,
			*wgpu.CommandEncoderDescriptor.{label = "Main Command Encoder"},
		);

        colorAttachment := wgpu.RenderPassColorAttachment.{
                loadOp = wgpu.LoadOp.Clear,
                storeOp = wgpu.StoreOp.Store,
                clearValue = wgpu.Color.{0.0, 0.0, 0.0, 1.0},
        };

        colorAttachment.view = current_view;

        render_pass_descriptor := wgpu.RenderPassDescriptor.{ label = "Main Render Pass" };
        render_pass_descriptor.colorAttachmentCount = 1;
        render_pass_descriptor.colorAttachments = *colorAttachment;

		render_pass := wgpu.CommandEncoderBeginRenderPass(cmd_encoder, *render_pass_descriptor);

        wgpu.RenderPassEncoderSetPipeline(render_pass, pipeline);
        wgpu.RenderPassEncoderSetVertexBuffer(render_pass, 0, vertex_buffer, 0, vertex_buffer_size);

        wgpu.RenderPassEncoderDraw(render_pass, VERTICES.count, 1, 0, 0);
		wgpu.RenderPassEncoderEnd(render_pass);
        wgpu.TextureViewDrop(current_view);

		cmd_buffer := wgpu.CommandEncoderFinish(cmd_encoder, *wgpu.CommandBufferDescriptor.{label = "Main Command Buffer"});

		wgpu.QueueSubmit(queue, 1, *cmd_buffer);
		wgpu.SwapChainPresent(swapchain);
    }

    // Close and destroy the window
    SDL_DestroyWindow(window);

    // Clean up
    SDL_Quit();
}

// Build
#run {
    #import "Compiler";
    #import "File";
    
	make_directory_if_it_does_not_exist("./bin/");	

    set_build_options_dc(.{ 
        output_executable_name = "jai_wgpu",
		output_path = "./bin/"
	});
}