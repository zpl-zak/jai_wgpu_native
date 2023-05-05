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

DevicePoll :: (device: Device, force_wait: bool) -> void #foreign libwgpu "wgpuDevicePoll";
SetLogCallback :: (callback: LogCallback) -> void #foreign libwgpu "wgpuSetLogCallback";
SetLogLevel :: (level: LogLevel) -> void #foreign libwgpu "wgpuSetLogLevel";
GetVersion :: () -> u32 #foreign libwgpu "wgpuGetVersion";
RenderPassEncoderSetPushConstants :: (encoder: RenderPassEncoder, stages: ShaderStage, offset: u32, sizeBytes: u32, data: *void) -> void #foreign libwgpu "wgpuRenderPassEncoderSetPushConstants";
InstanceDrop :: (instance: Instance) -> void #foreign libwgpu "wgpuInstanceDrop";
AdapterDrop :: (adapter: Adapter) -> void #foreign libwgpu "wgpuAdapterDrop";
BindGroupDrop :: (bindGroup: BindGroup) -> void #foreign libwgpu "wgpuBindGroupDrop";
BindGroupLayoutDrop :: (bindGroupLayout: BindGroupLayout) -> void #foreign libwgpu "wgpuBindGroupLayoutDrop";
BufferDrop :: (buffer: Buffer) -> void #foreign libwgpu "wgpuBufferDrop";
CommandBufferDrop :: (commandBuffer: CommandBuffer) -> void #foreign libwgpu "wgpuCommandBufferDrop";
CommandEncoderDrop :: (commandEncoder: CommandEncoder) -> void #foreign libwgpu "wgpuCommandEncoderDrop";
RenderPassEncoderDrop :: (renderPassEncoder: RenderPassEncoder) -> void #foreign libwgpu "wgpuRenderPassEncoderDrop";
ComputePassEncoderDrop :: (computePassEncoder: ComputePassEncoder) -> void #foreign libwgpu "wgpuComputePassEncoderDrop";
RenderBundleEncoderDrop :: (renderBundleEncoder: RenderBundleEncoder) -> void #foreign libwgpu "wgpuRenderBundleEncoderDrop";
ComputePipelineDrop :: (computePipeline: ComputePipeline) -> void #foreign libwgpu "wgpuComputePipelineDrop";
DeviceDrop :: (device: Device) -> void #foreign libwgpu "wgpuDeviceDrop";
PipelineLayoutDrop :: (pipelineLayout: PipelineLayout) -> void #foreign libwgpu "wgpuPipelineLayoutDrop";
QuerySetDrop :: (querySet: QuerySet) -> void #foreign libwgpu "wgpuQuerySetDrop";
RenderBundleDrop :: (renderBundle: RenderBundle) -> void #foreign libwgpu "wgpuRenderBundleDrop";
RenderPipelineDrop :: (renderPipeline: RenderPipeline) -> void #foreign libwgpu "wgpuRenderPipelineDrop";
SamplerDrop :: (sampler: Sampler) -> void #foreign libwgpu "wgpuSamplerDrop";
ShaderModuleDrop :: (shaderModule: ShaderModule) -> void #foreign libwgpu "wgpuShaderModuleDrop";
SurfaceDrop :: (surface: Surface) -> void #foreign libwgpu "wgpuSurfaceDrop";
SwapChainDrop :: (swapChain: SwapChain) -> void #foreign libwgpu "wgpuSwapChainDrop";
TextureDrop :: (texture: Texture) -> void #foreign libwgpu "wgpuTextureDrop";
TextureViewDrop :: (textureView: TextureView) -> void #foreign libwgpu "wgpuTextureViewDrop";
