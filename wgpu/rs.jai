LogCallback :: #type (level: LogLevel, msg: *u8) #c_call;

NativeSType :: enum s32 {
    DeviceExtras :: 1610612737;
    AdapterExtras :: 1610612738;
}

NativeFeature :: enum s32 {
    TEXTURE_ADAPTER_SPECIFIC_FORMAT_FEATURES :: 268435456;
}

LogLevel :: enum s32 {
    Off :: 0;
    Error :: 1;
    Warn :: 2;
    Info :: 3;
    Debug :: 4;
    Trace :: 5;
}

AdapterExtras :: struct {
    chain: ChainedStruct;
    backend: BackendType;
}

DeviceExtras :: struct {
    chain: ChainedStruct;
    nativeFeatures: NativeFeature;
    label: string;
    tracePath: *u8;
}

DevicePoll :: (device: Device, force_wait: bool) -> void #foreign libwgpu "wgpuDevicePoll"
SetLogCallback :: (callback: LogCallback) -> void #foreign libwgpu "wgpuSetLogCallback";
SetLogLevel :: (level: LogLevel) -> void #foreign libwgpu "wgpuSetLogLevel"
GetVersion :: () -> u32 #foreign libwgpu "wgpuGetVersion"
RenderPassEncoderSetPushConstants :: (encoder: RenderPassEncoder, stages: ShaderStage, offset: u32, sizeBytes: u32, data: *void) -> void #foreign libwgpu "wgpuRenderPassEncoderSetPushConstants"
BufferDrop :: (buffer: Buffer) -> void #foreign libwgpu "wgpuBufferDrop"
CommandEncoderDrop :: (commandEncoder: CommandEncoder) -> void #foreign libwgpu "wgpuCommandEncoderDrop"
DeviceDrop :: (device: Device) -> void #foreign libwgpu "wgpuDeviceDrop"
QuerySetDrop :: (querySet: QuerySet) -> void #foreign libwgpu "wgpuQuerySetDrop"
RenderPipelineDrop :: (renderPipeline: RenderPipeline) -> void #foreign libwgpu "wgpuRenderPipelineDrop"
TextureDrop :: (texture: Texture) -> void #foreign libwgpu "wgpuTextureDrop"
TextureViewDrop :: (textureView: TextureView) -> void #foreign libwgpu "wgpuTextureViewDrop"
SamplerDrop :: (sampler: Sampler) -> void #foreign libwgpu "wgpuSamplerDrop"
BindGroupLayoutDrop :: (bindGroupLayout: BindGroupLayout) -> void #foreign libwgpu "wgpuBindGroupLayoutDrop"
PipelineLayoutDrop :: (pipelineLayout: PipelineLayout) -> void #foreign libwgpu "wgpuPipelineLayoutDrop"
BindGroupDrop :: (bindGroup: BindGroup) -> void #foreign libwgpu "wgpuBindGroupDrop"
ShaderModuleDrop :: (shaderModule: ShaderModule) -> void #foreign libwgpu "wgpuShaderModuleDrop"
CommandBufferDrop :: (commandBuffer: CommandBuffer) -> void #foreign libwgpu "wgpuCommandBufferDrop"
RenderBundleDrop :: (renderBundle: RenderBundle) -> void #foreign libwgpu "wgpuRenderBundleDrop"
ComputePipelineDrop :: (computePipeline: ComputePipeline) -> void #foreign libwgpu "wgpuComputePipelineDrop"