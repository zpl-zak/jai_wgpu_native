Adapter :: *struct{};
BindGroup :: *struct{};
BindGroupLayout :: *struct{};
Buffer :: *struct{};
CommandBuffer :: *struct{};
CommandEncoder :: *struct{};
ComputePassEncoder :: *struct{};
ComputePipeline :: *struct{};
Device :: *struct{};
Instance :: *struct{};
PipelineLayout :: *struct{};
QuerySet :: *struct{};
Queue :: *struct{};
RenderBundle :: *struct{};
RenderBundleEncoder :: *struct{};
RenderPassEncoder :: *struct{};
RenderPipeline :: *struct{};
Sampler :: *struct{};
ShaderModule :: *struct{};
Surface :: *struct{};
SwapChain :: *struct{};
Texture :: *struct{};
TextureView :: *struct{};

AdapterType :: enum u32 {
    DiscreteGPU   :: 0;
    IntegratedGPU :: 1;
    CPU           :: 2;
    Unknown       :: 3;
}

AddressMode :: enum u32 {
    Repeat       :: 0;
    MirrorRepeat :: 1;
    ClampToEdge  :: 2;
}

BackendType :: enum u32 {
    Null     :: 0;
    WebGPU   :: 1;
    D3D11    :: 2;
    D3D12    :: 3;
    Metal    :: 4;
    Vulkan   :: 5;
    OpenGL   :: 6;
    OpenGLES :: 7;
}

BlendFactor :: enum u32 {
    Zero              :: 0;
    One               :: 1;
    Src               :: 2;
    OneMinusSrc       :: 3;
    SrcAlpha          :: 4;
    OneMinusSrcAlpha  :: 5;
    Dst               :: 6;
    OneMinusDst       :: 7;
    DstAlpha          :: 8;
    OneMinusDstAlpha  :: 9;
    SrcAlphaSaturated :: 10;
    Constant          :: 11;
    OneMinusConstant  :: 12;
}

BlendOperation :: enum u32 {
    Add             :: 0;
    Subtract        :: 1;
    ReverseSubtract :: 2;
    Min             :: 3;
    Max             :: 4;
}

BufferBindingType :: enum u32 {
    Undefined       :: 0;
    Uniform         :: 1;
    Storage         :: 2;
    ReadOnlyStorage :: 3;
}

BufferMapAsyncStatus :: enum u32 {
    Success                 :: 0;
    Error                   :: 1;
    Unknown                 :: 2;
    DeviceLost              :: 3;
    DestroyedBeforeCallback :: 4;
    UnmappedBeforeCallback  :: 5;
}

CompareFunction :: enum u32 {
    Undefined    :: 0;
    Never        :: 1;
    Less         :: 2;
    LessEqual    :: 3;
    Greater      :: 4;
    GreaterEqual :: 5;
    Equal        :: 6;
    NotEqual     :: 7;
    Always       :: 8;
}

CompilationInfoRequestStatus :: enum u32 {
    Success    :: 0;
    Error      :: 1;
    DeviceLost :: 2;
    Unknown    :: 3;
}

CompilationMessageType :: enum u32 {
    Error   :: 0;
    Warning :: 1;
    Info    :: 2;
}

ComputePassTimestampLocation :: enum u32 {
    Beginning :: 0;
    End       :: 1;
}

CreatePipelineAsyncStatus :: enum u32 {
    Success         :: 0;
    Error           :: 1;
    DeviceLost      :: 2;
    DeviceDestroyed :: 3;
    Unknown         :: 4;
}

CullMode :: enum u32 {
    None    :: 0;
    Front   :: 1;
    Back    :: 2;
}

DeviceLostReason :: enum u32 {
    Undefined :: 0;
    Destroyed :: 1;
}

ErrorFilter :: enum u32 {
    Validation  :: 0;
    OutOfMemory :: 1;
}

ErrorType :: enum u32 {
    NoError     :: 0;
    Validation  :: 1;
    OutOfMemory :: 2;
    Unknown     :: 3;
    DeviceLost  :: 4;
}

FeatureName :: enum u32 {
    Undefined               :: 0;
    DepthClipControl        :: 1;
    Depth24UnormStencil8    :: 2;
    Depth32FloatStencil8    :: 3;
    TimestampQuery          :: 4;
    PipelineStatisticsQuery :: 5;
    TextureCompressionBC    :: 6;
    TextureCompressionETC2  :: 7;
    TextureCompressionASTC  :: 8;
    IndirectFirstInstance   :: 9;
}

FilterMode :: enum u32 {
    Nearest :: 0;
    Linear  :: 1;
}

FrontFace :: enum u32 {
    CCW     :: 0;
    CW      :: 1;
}

IndexFormat :: enum u32 {
    Undefined :: 0;
    Uint16    :: 1;
    Uint32    :: 2;
}

LoadOp :: enum u32 {
    Undefined :: 0;
    Clear     :: 1;
    Load      :: 2;
}

MipmapFilterMode :: enum u32 {
    Nearest :: 0;
    Linear  :: 1;
}

PipelineStatisticName :: enum u32 {
    VertexShaderInvocations   :: 0;
    ClipperInvocations        :: 1;
    ClipperPrimitivesOut      :: 2;
    FragmentShaderInvocations :: 3;
    ComputeShaderInvocations  :: 4;
}

PowerPreference :: enum u32 {
    Undefined       :: 0;
    LowPower        :: 1;
    HighPerformance :: 2;
}

PredefinedColorSpace :: enum u32 {
    Undefined :: 0;
    Srgb      :: 1;
}

PresentMode :: enum u32 {
    Immediate :: 0;
    Mailbox   :: 1;
    Fifo      :: 2;
}

PrimitiveTopology :: enum u32 {
    PointList     :: 0;
    LineList      :: 1;
    LineStrip     :: 2;
    TriangleList  :: 3;
    TriangleStrip :: 4;
}

QueryType :: enum u32 {
    Occlusion          :: 0;
    PipelineStatistics :: 1;
    Timestamp          :: 2;
}

QueueWorkDoneStatus :: enum u32 {
    Success    :: 0;
    Error      :: 1;
    Unknown    :: 2;
    DeviceLost :: 3;
}

RenderPassTimestampLocation :: enum u32 {
    Beginning :: 0;
    End       :: 1;
}

RequestAdapterStatus :: enum u32 {
    Success     :: 0;
    Unavailable :: 1;
    Error       :: 2;
    Unknown     :: 3;
}

RequestDeviceStatus :: enum u32 {
    Success :: 0;
    Error   :: 1;
    Unknown :: 2;
}

SType :: enum u32 {
    Invalid                                  :: 0;
    SurfaceDescriptorFromMetalLayer          :: 1;
    SurfaceDescriptorFromWindowsHWND         :: 2;
    SurfaceDescriptorFromXlibWindow          :: 3;
    SurfaceDescriptorFromCanvasHTMLSelector  :: 4;
    ShaderModuleSPIRVDescriptor              :: 5;
    ShaderModuleWGSLDescriptor               :: 6;
    PrimitiveDepthClipControl                :: 7;
    SurfaceDescriptorFromWaylandSurface      :: 8;
    SurfaceDescriptorFromAndroidNativeWindow :: 9;
    SurfaceDescriptorFromXcbWindow           :: 10;
}

SamplerBindingType :: enum u32 {
    Undefined    :: 0;
    Filtering    :: 1;
    NonFiltering :: 2;
    Comparison   :: 3;
}

StencilOperation :: enum u32 {
    Keep           :: 0;
    Zero           :: 1;
    Replace        :: 2;
    Invert         :: 3;
    IncrementClamp :: 4;
    DecrementClamp :: 5;
    IncrementWrap  :: 6;
    DecrementWrap  :: 7;
}

StorageTextureAccess :: enum u32 {
    Undefined :: 0;
    WriteOnly :: 1;
}

StoreOp :: enum u32 {
    Undefined :: 0;
    Store     :: 1;
    Discard   :: 2;
}

TextureAspect :: enum u32 {
    All         :: 0;
    StencilOnly :: 1;
    DepthOnly   :: 2;
}

TextureComponentType :: enum u32 {
    Float           :: 0;
    Sint            :: 1;
    Uint            :: 2;
    DepthComparison :: 3;
}

TextureDimension :: enum u32 {
    _1D     :: 0;
    _2D     :: 1;
    _3D     :: 2;
}

TextureFormat :: enum u32 {
    Undefined            :: 0;
    R8Unorm              :: 1;
    R8Snorm              :: 2;
    R8Uint               :: 3;
    R8Sint               :: 4;
    R16Uint              :: 5;
    R16Sint              :: 6;
    R16Float             :: 7;
    RG8Unorm             :: 8;
    RG8Snorm             :: 9;
    RG8Uint              :: 10;
    RG8Sint              :: 11;
    R32Float             :: 12;
    R32Uint              :: 13;
    R32Sint              :: 14;
    RG16Uint             :: 15;
    RG16Sint             :: 16;
    RG16Float            :: 17;
    RGBA8Unorm           :: 18;
    RGBA8UnormSrgb       :: 19;
    RGBA8Snorm           :: 20;
    RGBA8Uint            :: 21;
    RGBA8Sint            :: 22;
    BGRA8Unorm           :: 23;
    BGRA8UnormSrgb       :: 24;
    RGB10A2Unorm         :: 25;
    RG11B10Ufloat        :: 26;
    RGB9E5Ufloat         :: 27;
    RG32Float            :: 28;
    RG32Uint             :: 29;
    RG32Sint             :: 30;
    RGBA16Uint           :: 31;
    RGBA16Sint           :: 32;
    RGBA16Float          :: 33;
    RGBA32Float          :: 34;
    RGBA32Uint           :: 35;
    RGBA32Sint           :: 36;
    Stencil8             :: 37;
    Depth16Unorm         :: 38;
    Depth24Plus          :: 39;
    Depth24PlusStencil8  :: 40;
    Depth24UnormStencil8 :: 41;
    Depth32Float         :: 42;
    Depth32FloatStencil8 :: 43;
    BC1RGBAUnorm         :: 44;
    BC1RGBAUnormSrgb     :: 45;
    BC2RGBAUnorm         :: 46;
    BC2RGBAUnormSrgb     :: 47;
    BC3RGBAUnorm         :: 48;
    BC3RGBAUnormSrgb     :: 49;
    BC4RUnorm            :: 50;
    BC4RSnorm            :: 51;
    BC5RGUnorm           :: 52;
    BC5RGSnorm           :: 53;
    BC6HRGBUfloat        :: 54;
    BC6HRGBFloat         :: 55;
    BC7RGBAUnorm         :: 56;
    BC7RGBAUnormSrgb     :: 57;
    ETC2RGB8Unorm        :: 58;
    ETC2RGB8UnormSrgb    :: 59;
    ETC2RGB8A1Unorm      :: 60;
    ETC2RGB8A1UnormSrgb  :: 61;
    ETC2RGBA8Unorm       :: 62;
    ETC2RGBA8UnormSrgb   :: 63;
    EACR11Unorm          :: 64;
    EACR11Snorm          :: 65;
    EACRG11Unorm         :: 66;
    EACRG11Snorm         :: 67;
    ASTC4x4Unorm         :: 68;
    ASTC4x4UnormSrgb     :: 69;
    ASTC5x4Unorm         :: 70;
    ASTC5x4UnormSrgb     :: 71;
    ASTC5x5Unorm         :: 72;
    ASTC5x5UnormSrgb     :: 73;
    ASTC6x5Unorm         :: 74;
    ASTC6x5UnormSrgb     :: 75;
    ASTC6x6Unorm         :: 76;
    ASTC6x6UnormSrgb     :: 77;
    ASTC8x5Unorm         :: 78;
    ASTC8x5UnormSrgb     :: 79;
    ASTC8x6Unorm         :: 80;
    ASTC8x6UnormSrgb     :: 81;
    ASTC8x8Unorm         :: 82;
    ASTC8x8UnormSrgb     :: 83;
    ASTC10x5Unorm        :: 84;
    ASTC10x5UnormSrgb    :: 85;
    ASTC10x6Unorm        :: 86;
    ASTC10x6UnormSrgb    :: 87;
    ASTC10x8Unorm        :: 88;
    ASTC10x8UnormSrgb    :: 89;
    ASTC10x10Unorm       :: 90;
    ASTC10x10UnormSrgb   :: 91;
    ASTC12x10Unorm       :: 92;
    ASTC12x10UnormSrgb   :: 93;
    ASTC12x12Unorm       :: 94;
    ASTC12x12UnormSrgb   :: 95;
}

TextureSampleType :: enum u32 {
    Undefined         :: 0;
    Float             :: 1;
    UnfilterableFloat :: 2;
    Depth             :: 3;
    Sint              :: 4;
    Uint              :: 5;
}

TextureViewDimension :: enum u32 {
    Undefined :: 0;
    _1D       :: 1;
    _2D       :: 2;
    _2DArray  :: 3;
    Cube      :: 4;
    CubeArray :: 5;
    _3D       :: 6;
}

VertexFormat :: enum u32 {
    Undefined :: 0;
    Uint8x2   :: 1;
    Uint8x4   :: 2;
    Sint8x2   :: 3;
    Sint8x4   :: 4;
    Unorm8x2  :: 5;
    Unorm8x4  :: 6;
    Snorm8x2  :: 7;
    Snorm8x4  :: 8;
    Uint16x2  :: 9;
    Uint16x4  :: 10;
    Sint16x2  :: 11;
    Sint16x4  :: 12;
    Unorm16x2 :: 13;
    Unorm16x4 :: 14;
    Snorm16x2 :: 15;
    Snorm16x4 :: 16;
    Float16x2 :: 17;
    Float16x4 :: 18;
    Float32   :: 19;
    Float32x2 :: 20;
    Float32x3 :: 21;
    Float32x4 :: 22;
    Uint32    :: 23;
    Uint32x2  :: 24;
    Uint32x3  :: 25;
    Uint32x4  :: 26;
    Sint32    :: 27;
    Sint32x2  :: 28;
    Sint32x3  :: 29;
    Sint32x4  :: 30;
}

VertexStepMode :: enum u32 {
    Vertex   :: 0;
    Instance :: 1;
}

BufferUsage :: enum u32 {
    None         :: 0;
    MapRead      :: 1;
    MapWrite     :: 2;
    CopySrc      :: 4;
    CopyDst      :: 8;
    Index        :: 16;
    Vertex       :: 32;
    Uniform      :: 64;
    Storage      :: 128;
    Indirect     :: 256;
    QueryResolve :: 512;
}

ColorWriteMask :: enum u32 {
    None    :: 0;
    Red     :: 1;
    Green   :: 2;
    Blue    :: 4;
    Alpha   :: 8;
    All     :: 15;
}

MapMode :: enum u32 {
    None    :: 0;
    Read    :: 1;
    Write   :: 2;
}

ShaderStage :: enum u32 {
    None     :: 0;
    Vertex   :: 1;
    Fragment :: 2;
    Compute  :: 4;
}

TextureUsage :: enum u32 {
    None             :: 0;
    CopySrc          :: 1;
    CopyDst          :: 2;
    TextureBinding   :: 4;
    StorageBinding   :: 8;
    RenderAttachment :: 16;
}



ChainedStruct :: struct {
    next:  *ChainedStruct;
    sType: SType;
}

ChainedStructOut :: struct {
    next:  *ChainedStructOut;
    sType: SType;
}

AdapterProperties :: struct {
    nextInChain:       *ChainedStructOut;
    vendorID:          u32;
    deviceID:          u32;
    name:              *u8;
    driverDescription: *u8;
    adapterType:       AdapterType;
    backendType:       BackendType;
}

BindGroupEntry :: struct {
    nextInChain: *ChainedStruct;
    binding:     u32;
    buffer:      Buffer;
    offset:      u64;
    size:        u64;
    sampler:     Sampler;
    textureView: TextureView;
}

BlendComponent :: struct {
    operation: BlendOperation;
    srcFactor: BlendFactor;
    dstFactor: BlendFactor;
}

BufferBindingLayout :: struct {
    nextInChain:      *ChainedStruct;
    type:             BufferBindingType;
    hasDynamicOffset: bool;
    minBindingSize:   u64;
}

BufferDescriptor :: struct {
    nextInChain:      *ChainedStruct;
    label:            *u8;
    usage:            BufferUsage;
    size:             u64;
    mappedAtCreation: bool;
}

Color :: struct {
    r: float64;
    g: float64;
    b: float64;
    a: float64;
}

CommandBufferDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
}

CommandEncoderDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
}

CompilationMessage :: struct {
    nextInChain: *ChainedStruct;
    message:     *u8;
    type:        CompilationMessageType;
    lineNum:     u64;
    linePos:     u64;
    offset:      u64;
    length:      u64;
}

ComputePassTimestampWrite :: struct {
    querySet:   QuerySet;
    queryIndex: u32;
    location:   ComputePassTimestampLocation;
}

ConstantEntry :: struct {
    nextInChain: *ChainedStruct;
    key:         *u8;
    value:       float64;
}

Extent3D :: struct {
    width:              u32;
    height:             u32;
    depthOrArrayLayers: u32;
}

InstanceDescriptor :: struct {
    nextInChain: *ChainedStruct;
}

Limits :: struct {
    maxTextureDimension1D:                     u32;
    maxTextureDimension2D:                     u32;
    maxTextureDimension3D:                     u32;
    maxTextureArrayLayers:                     u32;
    maxBindGroups:                             u32;
    maxDynamicUniformBuffersPerPipelineLayout: u32;
    maxDynamicStorageBuffersPerPipelineLayout: u32;
    maxSampledTexturesPerShaderStage:          u32;
    maxSamplersPerShaderStage:                 u32;
    maxStorageBuffersPerShaderStage:           u32;
    maxStorageTexturesPerShaderStage:          u32;
    maxUniformBuffersPerShaderStage:           u32;
    maxUniformBufferBindingSize:               u64;
    maxStorageBufferBindingSize:               u64;
    minUniformBufferOffsetAlignment:           u32;
    minStorageBufferOffsetAlignment:           u32;
    maxVertexBuffers:                          u32;
    maxVertexAttributes:                       u32;
    maxVertexBufferArrayStride:                u32;
    maxInterStageShaderComponents:             u32;
    maxComputeWorkgroupStorageSize:            u32;
    maxComputeInvocationsPerWorkgroup:         u32;
    maxComputeWorkgroupSizeX:                  u32;
    maxComputeWorkgroupSizeY:                  u32;
    maxComputeWorkgroupSizeZ:                  u32;
    maxComputeWorkgroupsPerDimension:          u32;
}

MultisampleState :: struct {
    nextInChain:            *ChainedStruct;
    count:                  u32;
    mask:                   u32;
    alphaToCoverageEnabled: bool;
}

Origin3D :: struct {
    x: u32;
    y: u32;
    z: u32;
}

PipelineLayoutDescriptor :: struct {
    nextInChain:          *ChainedStruct;
    label:                *u8;
    bindGroupLayoutCount: u32;
    bindGroupLayouts:     *BindGroupLayout;
}

PrimitiveDepthClipControl :: struct {
    chain:          ChainedStruct;
    unclippedDepth: bool;
}

PrimitiveState :: struct {
    nextInChain:      *ChainedStruct;
    topology:         PrimitiveTopology;
    stripIndexFormat: IndexFormat;
    frontFace:        FrontFace;
    cullMode:         CullMode;
}

QuerySetDescriptor :: struct {
    nextInChain:             *ChainedStruct;
    label:                   *u8;
    type:                    QueryType;
    count:                   u32;
    pipelineStatistics:      *PipelineStatisticName;
    pipelineStatisticsCount: u32;
}

QueueDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
}

RenderBundleDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
}

RenderBundleEncoderDescriptor :: struct {
    nextInChain:        *ChainedStruct;
    label:              *u8;
    colorFormatsCount:  u32;
    colorFormats:       *TextureFormat;
    depthStencilFormat: TextureFormat;
    sampleCount:        u32;
    depthReadOnly:      bool;
    stencilReadOnly:    bool;
}

RenderPassDepthStencilAttachment :: struct {
    view:              TextureView;
    depthLoadOp:       LoadOp;
    depthStoreOp:      StoreOp;
    depthClearValue:   float;
    depthReadOnly:     bool;
    stencilLoadOp:     LoadOp;
    stencilStoreOp:    StoreOp;
    stencilClearValue: u32;
    stencilReadOnly:   bool;
}

RenderPassTimestampWrite :: struct {
    querySet:   QuerySet;
    queryIndex: u32;
    location:   RenderPassTimestampLocation;
}

RequestAdapterOptions :: struct {
    nextInChain:          *ChainedStruct;
    compatibleSurface:    Surface;
    powerPreference:      PowerPreference;
    forceFallbackAdapter: bool;
}

SamplerBindingLayout :: struct {
    nextInChain: *ChainedStruct;
    type:        SamplerBindingType;
}

SamplerDescriptor :: struct {
    nextInChain:   *ChainedStruct;
    label:         *u8;
    addressModeU:  AddressMode;
    addressModeV:  AddressMode;
    addressModeW:  AddressMode;
    magFilter:     FilterMode;
    minFilter:     FilterMode;
    mipmapFilter:  MipmapFilterMode;
    lodMinClamp:   float;
    lodMaxClamp:   float;
    compare:       CompareFunction;
    maxAnisotropy: u16;
}

ShaderModuleCompilationHint :: struct {
    nextInChain: *ChainedStruct;
    entryPoint:  *u8;
    layout:      PipelineLayout;
}

ShaderModuleSPIRVDescriptor :: struct {
    chain:    ChainedStruct;
    codeSize: u32;
    code:     *u32;
}

ShaderModuleWGSLDescriptor :: struct {
    chain: ChainedStruct;
    code:  *u8;
}

StencilFaceState :: struct {
    compare:     CompareFunction;
    failOp:      StencilOperation;
    depthFailOp: StencilOperation;
    passOp:      StencilOperation;
}

StorageTextureBindingLayout :: struct {
    nextInChain:   *ChainedStruct;
    access:        StorageTextureAccess;
    format:        TextureFormat;
    viewDimension: TextureViewDimension;
}

SurfaceDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
}

SurfaceDescriptorFromAndroidNativeWindow :: struct {
    chain:  ChainedStruct;
    window: *void;
}

SurfaceDescriptorFromCanvasHTMLSelector :: struct {
    chain:    ChainedStruct;
    selector: *u8;
}

SurfaceDescriptorFromMetalLayer :: struct {
    chain: ChainedStruct;
    layer: *void;
}

SurfaceDescriptorFromWaylandSurface :: struct {
    chain:   ChainedStruct;
    display: *void;
    surface: *void;
}

SurfaceDescriptorFromWindowsHWND :: struct {
    chain:     ChainedStruct;
    hinstance: *void;
    hwnd:      *void;
}

SurfaceDescriptorFromXcbWindow :: struct {
    chain:      ChainedStruct;
    connection: *void;
    window:     u32;
}

SurfaceDescriptorFromXlibWindow :: struct {
    chain:   ChainedStruct;
    display: *void;
    window:  u32;
}

SwapChainDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
    usage:       TextureUsage;
    format:      TextureFormat;
    width:       u32;
    height:      u32;
    presentMode: PresentMode;
}

TextureBindingLayout :: struct {
    nextInChain:   *ChainedStruct;
    sampleType:    TextureSampleType;
    viewDimension: TextureViewDimension;
    multisampled:  bool;
}

TextureDataLayout :: struct {
    nextInChain:  *ChainedStruct;
    offset:       u64;
    bytesPerRow:  u32;
    rowsPerImage: u32;
}

TextureViewDescriptor :: struct {
    nextInChain:     *ChainedStruct;
    label:           *u8;
    format:          TextureFormat;
    dimension:       TextureViewDimension;
    baseMipLevel:    u32;
    mipLevelCount:   u32;
    baseArrayLayer:  u32;
    arrayLayerCount: u32;
    aspect:          TextureAspect;
}

VertexAttribute :: struct {
    format:         VertexFormat;
    offset:         u64;
    shaderLocation: u32;
}

BindGroupDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
    layout:      BindGroupLayout;
    entryCount:  u32;
    entries:     *BindGroupEntry;
}

BindGroupLayoutEntry :: struct {
    nextInChain:    *ChainedStruct;
    binding:        u32;
    visibility:     ShaderStage;
    buffer:         BufferBindingLayout;
    sampler:        SamplerBindingLayout;
    texture:        TextureBindingLayout;
    storageTexture: StorageTextureBindingLayout;
}

BlendState :: struct {
    color: BlendComponent;
    alpha: BlendComponent;
}

CompilationInfo :: struct {
    nextInChain:  *ChainedStruct;
    messageCount: u32;
    messages:     *CompilationMessage;
}

ComputePassDescriptor :: struct {
    nextInChain:         *ChainedStruct;
    label:               *u8;
    timestampWriteCount: u32;
    timestampWrites:     *ComputePassTimestampWrite;
}

DepthStencilState :: struct {
    nextInChain:         *ChainedStruct;
    format:              TextureFormat;
    depthWriteEnabled:   bool;
    depthCompare:        CompareFunction;
    stencilFront:        StencilFaceState;
    stencilBack:         StencilFaceState;
    stencilReadMask:     u32;
    stencilWriteMask:    u32;
    depthBias:           s32;
    depthBiasSlopeScale: float;
    depthBiasClamp:      float;
}

ImageCopyBuffer :: struct {
    nextInChain: *ChainedStruct;
    layout:      TextureDataLayout;
    buffer:      Buffer;
}

ImageCopyTexture :: struct {
    nextInChain: *ChainedStruct;
    texture:     Texture;
    mipLevel:    u32;
    origin:      Origin3D;
    aspect:      TextureAspect;
}

ProgrammableStageDescriptor :: struct {
    nextInChain:   *ChainedStruct;
    module:        ShaderModule;
    entryPoint:    *u8;
    constantCount: u32;
    constants:     *ConstantEntry;
}

RenderPassColorAttachment :: struct {
    view:          TextureView;
    resolveTarget: TextureView;
    loadOp:        LoadOp;
    storeOp:       StoreOp;
    clearValue:    Color;
}

RequiredLimits :: struct {
    nextInChain: *ChainedStruct;
    limits:      Limits;
}

ShaderModuleDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
    hintCount:   u32;
    hints:       *ShaderModuleCompilationHint;
}

SupportedLimits :: struct {
    nextInChain: *ChainedStructOut;
    limits:      Limits;
}

TextureDescriptor :: struct {
    nextInChain:     *ChainedStruct;
    label:           *u8;
    usage:           TextureUsage;
    dimension:       TextureDimension;
    size:            Extent3D;
    format:          TextureFormat;
    mipLevelCount:   u32;
    sampleCount:     u32;
    viewFormatCount: u32;
    viewFormats:     *TextureFormat;
}

VertexBufferLayout :: struct {
    arrayStride:    u64;
    stepMode:       VertexStepMode;
    attributeCount: u32;
    attributes:     *VertexAttribute;
}

BindGroupLayoutDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
    entryCount:  u32;
    entries:     *BindGroupLayoutEntry;
}

ColorTargetState :: struct {
    nextInChain: *ChainedStruct;
    format:      TextureFormat;
    blend:       *BlendState;
    writeMask:   ColorWriteMask;
}

ComputePipelineDescriptor :: struct {
    nextInChain: *ChainedStruct;
    label:       *u8;
    layout:      PipelineLayout;
    compute:     ProgrammableStageDescriptor;
}

DeviceDescriptor :: struct {
    nextInChain:           *ChainedStruct;
    label:                 *u8;
    requiredFeaturesCount: u32;
    requiredFeatures:      *FeatureName;
    requiredLimits:        *RequiredLimits;
    defaultQueue:          QueueDescriptor;
}

RenderPassDescriptor :: struct {
    nextInChain:            *ChainedStruct;
    label:                  *u8;
    colorAttachmentCount:   u32;
    colorAttachments:       *RenderPassColorAttachment;
    depthStencilAttachment: *RenderPassDepthStencilAttachment;
    occlusionQuerySet:      QuerySet;
    timestampWriteCount:    u32;
    timestampWrites:        *RenderPassTimestampWrite;
}

VertexState :: struct {
    nextInChain:   *ChainedStruct;
    module:        ShaderModule;
    entryPoint:    *u8;
    constantCount: u32;
    constants:     *ConstantEntry;
    bufferCount:   u32;
    buffers:       *VertexBufferLayout;
}

FragmentState :: struct {
    nextInChain:   *ChainedStruct;
    module:        ShaderModule;
    entryPoint:    *u8;
    constantCount: u32;
    constants:     *ConstantEntry;
    targetCount:   u32;
    targets:       *ColorTargetState;
}

RenderPipelineDescriptor :: struct {
    nextInChain:  *ChainedStruct;
    label:        *u8;
    layout:       PipelineLayout;
    vertex:       VertexState;
    primitive:    PrimitiveState;
    depthStencil: *DepthStencilState;
    multisample:  MultisampleState;
    fragment:     *FragmentState;
}

BufferMapCallback :: #type (a0: BufferMapAsyncStatus, a1: *void) -> void #c_call;
CompilationInfoCallback :: #type (a0: CompilationInfoRequestStatus, a1: *CompilationInfo, a2: *void) -> void #c_call;
CreateComputePipelineAsyncCallback :: #type (a0: CreatePipelineAsyncStatus, a1: ComputePipeline, a2: *u8, a3: *void) -> void #c_call;
CreateRenderPipelineAsyncCallback :: #type (a0: CreatePipelineAsyncStatus, a1: RenderPipeline, a2: *u8, a3: *void) -> void #c_call;
DeviceLostCallback :: #type (a0: DeviceLostReason, a1: *u8, a2: *void) -> void #c_call;
ErrorCallback :: #type (a0: ErrorType, a1: *u8, a2: *void) -> void #c_call;
Proc :: #type () -> void #c_call;
QueueWorkDoneCallback :: #type (a0: QueueWorkDoneStatus, a1: *void) -> void #c_call;
RequestAdapterCallback :: #type (a0: RequestAdapterStatus, a1: Adapter, a2: *u8, a3: *void) -> void #c_call;
RequestDeviceCallback :: #type (a0: RequestDeviceStatus, a1: Device, a2: *u8, a3: *void) -> void #c_call;

ProcCreateInstance :: #type (a0: *InstanceDescriptor) -> Instance #c_call;
ProcGetProcAddress :: #type (a0: Device, a1: *u8) -> Proc #c_call;

// Procs of Adapter
ProcAdapterEnumerateFeatures :: #type (a0: Adapter, a1: *FeatureName) -> size_t #c_call;
ProcAdapterGetLimits :: #type (a0: Adapter, a1: *SupportedLimits) -> bool #c_call;
ProcAdapterGetProperties :: #type (a0: Adapter, a1: *AdapterProperties) -> void #c_call;
ProcAdapterHasFeature :: #type (a0: Adapter, a1: FeatureName) -> bool #c_call;
ProcAdapterRequestDevice :: #type (a0: Adapter, a1: *DeviceDescriptor, a2: RequestDeviceCallback, a3: *void) -> void #c_call;

// Procs of Buffer
ProcBufferDestroy :: #type (a0: Buffer) -> void #c_call;
ProcBufferGetConstMappedRange :: #type (a0: Buffer, a1: size_t, a2: size_t) -> *void #c_call;
ProcBufferGetMappedRange :: #type (a0: Buffer, a1: size_t, a2: size_t) -> *void #c_call;
ProcBufferMapAsync :: #type (a0: Buffer, a1: MapMode, a2: size_t, a3: size_t, a4: BufferMapCallback, a5: *void) -> void #c_call;
ProcBufferUnmap :: #type (a0: Buffer) -> void #c_call;

// Procs of CommandEncoder
ProcCommandEncoderBeginComputePass :: #type (a0: CommandEncoder, a1: *ComputePassDescriptor) -> ComputePassEncoder #c_call;
ProcCommandEncoderBeginRenderPass :: #type (a0: CommandEncoder, a1: *RenderPassDescriptor) -> RenderPassEncoder #c_call;
ProcCommandEncoderClearBuffer :: #type (a0: CommandEncoder, a1: Buffer, a2: u64, a3: u64) -> void #c_call;
ProcCommandEncoderCopyBufferToBuffer :: #type (a0: CommandEncoder, a1: Buffer, a2: u64, a3: Buffer, a4: u64, a5: u64) -> void #c_call;
ProcCommandEncoderCopyBufferToTexture :: #type (a0: CommandEncoder, a1: *ImageCopyBuffer, a2: *ImageCopyTexture, a3: *Extent3D) -> void #c_call;
ProcCommandEncoderCopyTextureToBuffer :: #type (a0: CommandEncoder, a1: *ImageCopyTexture, a2: *ImageCopyBuffer, a3: *Extent3D) -> void #c_call;
ProcCommandEncoderCopyTextureToTexture :: #type (a0: CommandEncoder, a1: *ImageCopyTexture, a2: *ImageCopyTexture, a3: *Extent3D) -> void #c_call;
ProcCommandEncoderFinish :: #type (a0: CommandEncoder, a1: *CommandBufferDescriptor) -> CommandBuffer #c_call;
ProcCommandEncoderInsertDebugMarker :: #type (a0: CommandEncoder, a1: *u8) -> void #c_call;
ProcCommandEncoderPopDebugGroup :: #type (a0: CommandEncoder) -> void #c_call;
ProcCommandEncoderPushDebugGroup :: #type (a0: CommandEncoder, a1: *u8) -> void #c_call;
ProcCommandEncoderResolveQuerySet :: #type (a0: CommandEncoder, a1: QuerySet, a2: u32, a3: u32, a4: Buffer, a5: u64) -> void #c_call;
ProcCommandEncoderWriteTimestamp :: #type (a0: CommandEncoder, a1: QuerySet, a2: u32) -> void #c_call;

// Procs of ComputePassEncoder
ProcComputePassEncoderBeginPipelineStatisticsQuery :: #type (a0: ComputePassEncoder, a1: QuerySet, a2: u32) -> void #c_call;
ProcComputePassEncoderDispatchWorkgroups :: #type (a0: ComputePassEncoder, a1: u32, a2: u32, a3: u32) -> void #c_call;
ProcComputePassEncoderDispatchWorkgroupsIndirect :: #type (a0: ComputePassEncoder, a1: Buffer, a2: u64) -> void #c_call;
ProcComputePassEncoderEnd :: #type (a0: ComputePassEncoder) -> void #c_call;
ProcComputePassEncoderEndPipelineStatisticsQuery :: #type (a0: ComputePassEncoder) -> void #c_call;
ProcComputePassEncoderInsertDebugMarker :: #type (a0: ComputePassEncoder, a1: *u8) -> void #c_call;
ProcComputePassEncoderPopDebugGroup :: #type (a0: ComputePassEncoder) -> void #c_call;
ProcComputePassEncoderPushDebugGroup :: #type (a0: ComputePassEncoder, a1: *u8) -> void #c_call;
ProcComputePassEncoderSetBindGroup :: #type (a0: ComputePassEncoder, a1: u32, a2: BindGroup, a3: u32, a4: *u32) -> void #c_call;
ProcComputePassEncoderSetPipeline :: #type (a0: ComputePassEncoder, a1: ComputePipeline) -> void #c_call;

// Procs of ComputePipeline
ProcComputePipelineGetBindGroupLayout :: #type (a0: ComputePipeline, a1: u32) -> BindGroupLayout #c_call;
ProcComputePipelineSetLabel :: #type (a0: ComputePipeline, a1: *u8) -> void #c_call;

// Procs of Device
ProcDeviceCreateBindGroup :: #type (a0: Device, a1: *BindGroupDescriptor) -> BindGroup #c_call;
ProcDeviceCreateBindGroupLayout :: #type (a0: Device, a1: *BindGroupLayoutDescriptor) -> BindGroupLayout #c_call;
ProcDeviceCreateBuffer :: #type (a0: Device, a1: *BufferDescriptor) -> Buffer #c_call;
ProcDeviceCreateCommandEncoder :: #type (a0: Device, a1: *CommandEncoderDescriptor) -> CommandEncoder #c_call;
ProcDeviceCreateComputePipeline :: #type (a0: Device, a1: *ComputePipelineDescriptor) -> ComputePipeline #c_call;
ProcDeviceCreateComputePipelineAsync :: #type (a0: Device, a1: *ComputePipelineDescriptor, a2: CreateComputePipelineAsyncCallback, a3: *void) -> void #c_call;
ProcDeviceCreatePipelineLayout :: #type (a0: Device, a1: *PipelineLayoutDescriptor) -> PipelineLayout #c_call;
ProcDeviceCreateQuerySet :: #type (a0: Device, a1: *QuerySetDescriptor) -> QuerySet #c_call;
ProcDeviceCreateRenderBundleEncoder :: #type (a0: Device, a1: *RenderBundleEncoderDescriptor) -> RenderBundleEncoder #c_call;
ProcDeviceCreateRenderPipeline :: #type (a0: Device, a1: *RenderPipelineDescriptor) -> RenderPipeline #c_call;
ProcDeviceCreateRenderPipelineAsync :: #type (a0: Device, a1: *RenderPipelineDescriptor, a2: CreateRenderPipelineAsyncCallback, a3: *void) -> void #c_call;
ProcDeviceCreateSampler :: #type (a0: Device, a1: *SamplerDescriptor) -> Sampler #c_call;
ProcDeviceCreateShaderModule :: #type (a0: Device, a1: *ShaderModuleDescriptor) -> ShaderModule #c_call;
ProcDeviceCreateSwapChain :: #type (a0: Device, a1: Surface, a2: *SwapChainDescriptor) -> SwapChain #c_call;
ProcDeviceCreateTexture :: #type (a0: Device, a1: *TextureDescriptor) -> Texture #c_call;
ProcDeviceDestroy :: #type (a0: Device) -> void #c_call;
ProcDeviceEnumerateFeatures :: #type (a0: Device, a1: *FeatureName) -> size_t #c_call;
ProcDeviceGetLimits :: #type (a0: Device, a1: *SupportedLimits) -> bool #c_call;
ProcDeviceGetQueue :: #type (a0: Device) -> Queue #c_call;
ProcDeviceHasFeature :: #type (a0: Device, a1: FeatureName) -> bool #c_call;
ProcDevicePopErrorScope :: #type (a0: Device, a1: ErrorCallback, a2: *void) -> bool #c_call;
ProcDevicePushErrorScope :: #type (a0: Device, a1: ErrorFilter) -> void #c_call;
ProcDeviceSetDeviceLostCallback :: #type (a0: Device, a1: DeviceLostCallback, a2: *void) -> void #c_call;
ProcDeviceSetUncapturedErrorCallback :: #type (a0: Device, a1: ErrorCallback, a2: *void) -> void #c_call;

// Procs of Instance
ProcInstanceCreateSurface :: #type (a0: Instance, a1: *SurfaceDescriptor) -> Surface #c_call;
ProcInstanceProcessEvents :: #type (a0: Instance) -> void #c_call;
ProcInstanceRequestAdapter :: #type (a0: Instance, a1: *RequestAdapterOptions, a2: RequestAdapterCallback, a3: *void) -> void #c_call;

// Procs of QuerySet
ProcQuerySetDestroy :: #type (a0: QuerySet) -> void #c_call;

// Procs of Queue
ProcQueueOnSubmittedWorkDone :: #type (a0: Queue, a1: QueueWorkDoneCallback, a2: *void) -> void #c_call;
ProcQueueSubmit :: #type (a0: Queue, a1: u32, a2: *CommandBuffer) -> void #c_call;
ProcQueueWriteBuffer :: #type (a0: Queue, a1: Buffer, a2: u64, a3: *void, a4: size_t) -> void #c_call;
ProcQueueWriteTexture :: #type (a0: Queue, a1: *ImageCopyTexture, a2: *void, a3: size_t, a4: *TextureDataLayout, a5: *Extent3D) -> void #c_call;

// Procs of RenderBundleEncoder
ProcRenderBundleEncoderDraw :: #type (a0: RenderBundleEncoder, a1: u32, a2: u32, a3: u32, a4: u32) -> void #c_call;
ProcRenderBundleEncoderDrawIndexed :: #type (a0: RenderBundleEncoder, a1: u32, a2: u32, a3: u32, a4: s32, a5: u32) -> void #c_call;
ProcRenderBundleEncoderDrawIndexedIndirect :: #type (a0: RenderBundleEncoder, a1: Buffer, a2: u64) -> void #c_call;
ProcRenderBundleEncoderDrawIndirect :: #type (a0: RenderBundleEncoder, a1: Buffer, a2: u64) -> void #c_call;
ProcRenderBundleEncoderFinish :: #type (a0: RenderBundleEncoder, a1: *RenderBundleDescriptor) -> RenderBundle #c_call;
ProcRenderBundleEncoderInsertDebugMarker :: #type (a0: RenderBundleEncoder, a1: *u8) -> void #c_call;
ProcRenderBundleEncoderPopDebugGroup :: #type (a0: RenderBundleEncoder) -> void #c_call;
ProcRenderBundleEncoderPushDebugGroup :: #type (a0: RenderBundleEncoder, a1: *u8) -> void #c_call;
ProcRenderBundleEncoderSetBindGroup :: #type (a0: RenderBundleEncoder, a1: u32, a2: BindGroup, a3: u32, a4: *u32) -> void #c_call;
ProcRenderBundleEncoderSetIndexBuffer :: #type (a0: RenderBundleEncoder, a1: Buffer, a2: IndexFormat, a3: u64, a4: u64) -> void #c_call;
ProcRenderBundleEncoderSetPipeline :: #type (a0: RenderBundleEncoder, a1: RenderPipeline) -> void #c_call;
ProcRenderBundleEncoderSetVertexBuffer :: #type (a0: RenderBundleEncoder, a1: u32, a2: Buffer, a3: u64, a4: u64) -> void #c_call;

// Procs of RenderPassEncoder
ProcRenderPassEncoderBeginOcclusionQuery :: #type (a0: RenderPassEncoder, a1: u32) -> void #c_call;
ProcRenderPassEncoderBeginPipelineStatisticsQuery :: #type (a0: RenderPassEncoder, a1: QuerySet, a2: u32) -> void #c_call;
ProcRenderPassEncoderDraw :: #type (a0: RenderPassEncoder, a1: u32, a2: u32, a3: u32, a4: u32) -> void #c_call;
ProcRenderPassEncoderDrawIndexed :: #type (a0: RenderPassEncoder, a1: u32, a2: u32, a3: u32, a4: s32, a5: u32) -> void #c_call;
ProcRenderPassEncoderDrawIndexedIndirect :: #type (a0: RenderPassEncoder, a1: Buffer, a2: u64) -> void #c_call;
ProcRenderPassEncoderDrawIndirect :: #type (a0: RenderPassEncoder, a1: Buffer, a2: u64) -> void #c_call;
ProcRenderPassEncoderEnd :: #type (a0: RenderPassEncoder) -> void #c_call;
ProcRenderPassEncoderEndOcclusionQuery :: #type (a0: RenderPassEncoder) -> void #c_call;
ProcRenderPassEncoderEndPipelineStatisticsQuery :: #type (a0: RenderPassEncoder) -> void #c_call;
ProcRenderPassEncoderExecuteBundles :: #type (a0: RenderPassEncoder, a1: u32, a2: *RenderBundle) -> void #c_call;
ProcRenderPassEncoderInsertDebugMarker :: #type (a0: RenderPassEncoder, a1: *u8) -> void #c_call;
ProcRenderPassEncoderPopDebugGroup :: #type (a0: RenderPassEncoder) -> void #c_call;
ProcRenderPassEncoderPushDebugGroup :: #type (a0: RenderPassEncoder, a1: *u8) -> void #c_call;
ProcRenderPassEncoderSetBindGroup :: #type (a0: RenderPassEncoder, a1: u32, a2: BindGroup, a3: u32, a4: *u32) -> void #c_call;
ProcRenderPassEncoderSetBlendConstant :: #type (a0: RenderPassEncoder, a1: *Color) -> void #c_call;
ProcRenderPassEncoderSetIndexBuffer :: #type (a0: RenderPassEncoder, a1: Buffer, a2: IndexFormat, a3: u64, a4: u64) -> void #c_call;
ProcRenderPassEncoderSetPipeline :: #type (a0: RenderPassEncoder, a1: RenderPipeline) -> void #c_call;
ProcRenderPassEncoderSetScissorRect :: #type (a0: RenderPassEncoder, a1: u32, a2: u32, a3: u32, a4: u32) -> void #c_call;
ProcRenderPassEncoderSetStencilReference :: #type (a0: RenderPassEncoder, a1: u32) -> void #c_call;
ProcRenderPassEncoderSetVertexBuffer :: #type (a0: RenderPassEncoder, a1: u32, a2: Buffer, a3: u64, a4: u64) -> void #c_call;
ProcRenderPassEncoderSetViewport :: #type (a0: RenderPassEncoder, a1: float, a2: float, a3: float, a4: float, a5: float, a6: float) -> void #c_call;

// Procs of RenderPipeline
ProcRenderPipelineGetBindGroupLayout :: #type (a0: RenderPipeline, a1: u32) -> BindGroupLayout #c_call;
ProcRenderPipelineSetLabel :: #type (a0: RenderPipeline, a1: *u8) -> void #c_call;

// Procs of ShaderModule
ProcShaderModuleGetCompilationInfo :: #type (a0: ShaderModule, a1: CompilationInfoCallback, a2: *void) -> void #c_call;
ProcShaderModuleSetLabel :: #type (a0: ShaderModule, a1: *u8) -> void #c_call;

// Procs of Surface
ProcSurfaceGetPreferredFormat :: #type (a0: Surface, a1: Adapter) -> TextureFormat #c_call;

// Procs of SwapChain
ProcSwapChainGetCurrentTextureView :: #type (a0: SwapChain) -> TextureView #c_call;
ProcSwapChainPresent :: #type (a0: SwapChain) -> void #c_call;

// Procs of Texture
ProcTextureCreateView :: #type (a0: Texture, a1: *TextureViewDescriptor) -> TextureView #c_call;
ProcTextureDestroy :: #type (a0: Texture) -> void #c_call;

CreateInstance :: (descriptor: *InstanceDescriptor) -> Instance #foreign libwgpu "wgpuCreateInstance";

AdapterGetLimits :: (adapter: Adapter, limits: *SupportedLimits) -> bool #foreign libwgpu "wgpuAdapterGetLimits";
AdapterGetProperties :: (adapter: Adapter, properties: *AdapterProperties) -> void #foreign libwgpu "wgpuAdapterGetProperties";

AdapterRequestDevice :: (adapter: Adapter, descriptor: *DeviceDescriptor, callback: RequestDeviceCallback, userdata: *void) -> void #foreign libwgpu "wgpuAdapterRequestDevice";

// Methods of Buffer
BufferDestroy :: (buffer: Buffer) -> void #foreign libwgpu "wgpuBufferDestroy";

BufferGetMappedRange :: (buffer: Buffer, offset: size_t, size: size_t) -> *void #foreign libwgpu "wgpuBufferGetMappedRange";
BufferMapAsync :: (buffer: Buffer, mode: MapMode, offset: size_t, size: size_t, callback: BufferMapCallback, userdata: *void) -> void #foreign libwgpu "wgpuBufferMapAsync";
BufferUnmap :: (buffer: Buffer) -> void #foreign libwgpu "wgpuBufferUnmap";

// Methods of CommandEncoder
CommandEncoderBeginComputePass :: (commandEncoder: CommandEncoder, descriptor: *ComputePassDescriptor) -> ComputePassEncoder #foreign libwgpu "wgpuCommandEncoderBeginComputePass";
CommandEncoderBeginRenderPass :: (commandEncoder: CommandEncoder, descriptor: *RenderPassDescriptor) -> RenderPassEncoder #foreign libwgpu "wgpuCommandEncoderBeginRenderPass";

CommandEncoderCopyBufferToBuffer :: (commandEncoder: CommandEncoder, source: Buffer, sourceOffset: u64, destination: Buffer, destinationOffset: u64, size: u64) -> void #foreign libwgpu "wgpuCommandEncoderCopyBufferToBuffer";
CommandEncoderCopyBufferToTexture :: (commandEncoder: CommandEncoder, source: *ImageCopyBuffer, destination: *ImageCopyTexture, copySize: *Extent3D) -> void #foreign libwgpu "wgpuCommandEncoderCopyBufferToTexture";
CommandEncoderCopyTextureToBuffer :: (commandEncoder: CommandEncoder, source: *ImageCopyTexture, destination: *ImageCopyBuffer, copySize: *Extent3D) -> void #foreign libwgpu "wgpuCommandEncoderCopyTextureToBuffer";
CommandEncoderCopyTextureToTexture :: (commandEncoder: CommandEncoder, source: *ImageCopyTexture, destination: *ImageCopyTexture, copySize: *Extent3D) -> void #foreign libwgpu "wgpuCommandEncoderCopyTextureToTexture";
CommandEncoderFinish :: (commandEncoder: CommandEncoder, descriptor: *CommandBufferDescriptor) -> CommandBuffer #foreign libwgpu "wgpuCommandEncoderFinish";

ComputePassEncoderDispatchWorkgroups :: (computePassEncoder: ComputePassEncoder, workgroupCountX: u32, workgroupCountY: u32, workgroupCountZ: u32) -> void #foreign libwgpu "wgpuComputePassEncoderDispatchWorkgroups";
ComputePassEncoderDispatchWorkgroupsIndirect :: (computePassEncoder: ComputePassEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #foreign libwgpu "wgpuComputePassEncoderDispatchWorkgroupsIndirect";
ComputePassEncoderEnd :: (computePassEncoder: ComputePassEncoder) -> void #foreign libwgpu "wgpuComputePassEncoderEnd";

ComputePassEncoderSetBindGroup :: (computePassEncoder: ComputePassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: u32, dynamicOffsets: *u32) -> void #foreign libwgpu "wgpuComputePassEncoderSetBindGroup";
ComputePassEncoderSetPipeline :: (computePassEncoder: ComputePassEncoder, pipeline: ComputePipeline) -> void #foreign libwgpu "wgpuComputePassEncoderSetPipeline";

// Methods of Device
DeviceCreateBindGroup :: (device: Device, descriptor: *BindGroupDescriptor) -> BindGroup #foreign libwgpu "wgpuDeviceCreateBindGroup";
DeviceCreateBindGroupLayout :: (device: Device, descriptor: *BindGroupLayoutDescriptor) -> BindGroupLayout #foreign libwgpu "wgpuDeviceCreateBindGroupLayout";
DeviceCreateBuffer :: (device: Device, descriptor: *BufferDescriptor) -> Buffer #foreign libwgpu "wgpuDeviceCreateBuffer";
DeviceCreateCommandEncoder :: (device: Device, descriptor: *CommandEncoderDescriptor) -> CommandEncoder #foreign libwgpu "wgpuDeviceCreateCommandEncoder";
DeviceCreateComputePipeline :: (device: Device, descriptor: *ComputePipelineDescriptor) -> ComputePipeline #foreign libwgpu "wgpuDeviceCreateComputePipeline";

DeviceCreatePipelineLayout :: (device: Device, descriptor: *PipelineLayoutDescriptor) -> PipelineLayout #foreign libwgpu "wgpuDeviceCreatePipelineLayout";

DeviceCreateRenderPipeline :: (device: Device, descriptor: *RenderPipelineDescriptor) -> RenderPipeline #foreign libwgpu "wgpuDeviceCreateRenderPipeline";

DeviceCreateSampler :: (device: Device, descriptor: *SamplerDescriptor) -> Sampler #foreign libwgpu "wgpuDeviceCreateSampler";
DeviceCreateShaderModule :: (device: Device, descriptor: *ShaderModuleDescriptor) -> ShaderModule #foreign libwgpu "wgpuDeviceCreateShaderModule";
DeviceCreateSwapChain :: (device: Device, surface: Surface, descriptor: *SwapChainDescriptor) -> SwapChain #foreign libwgpu "wgpuDeviceCreateSwapChain";
DeviceCreateTexture :: (device: Device, descriptor: *TextureDescriptor) -> Texture #foreign libwgpu "wgpuDeviceCreateTexture";

DeviceGetLimits :: (device: Device, limits: *SupportedLimits) -> bool #foreign libwgpu "wgpuDeviceGetLimits";
DeviceGetQueue :: (device: Device) -> Queue #foreign libwgpu "wgpuDeviceGetQueue";

DeviceSetDeviceLostCallback :: (device: Device, callback: DeviceLostCallback, userdata: *void) -> void #foreign libwgpu "wgpuDeviceSetDeviceLostCallback";
DeviceSetUncapturedErrorCallback :: (device: Device, callback: ErrorCallback, userdata: *void) -> void #foreign libwgpu "wgpuDeviceSetUncapturedErrorCallback";

// Methods of Instance
InstanceCreateSurface :: (instance: Instance, descriptor: *SurfaceDescriptor) -> Surface #foreign libwgpu "wgpuInstanceCreateSurface";

InstanceRequestAdapter :: (instance: Instance, options: *RequestAdapterOptions, callback: RequestAdapterCallback, userdata: *void) -> void #foreign libwgpu "wgpuInstanceRequestAdapter";

QueueSubmit :: (queue: Queue, commandCount: u32, commands: *CommandBuffer) -> void #foreign libwgpu "wgpuQueueSubmit";
QueueWriteBuffer :: (queue: Queue, buffer: Buffer, bufferOffset: u64, data: *void, size: size_t) -> void #foreign libwgpu "wgpuQueueWriteBuffer";
QueueWriteTexture :: (queue: Queue, destination: *ImageCopyTexture, data: *void, dataSize: size_t, dataLayout: *TextureDataLayout, writeSize: *Extent3D) -> void #foreign libwgpu "wgpuQueueWriteTexture";

RenderPassEncoderDraw :: (renderPassEncoder: RenderPassEncoder, vertexCount: u32, instanceCount: u32, firstVertex: u32, firstInstance: u32) -> void #foreign libwgpu "wgpuRenderPassEncoderDraw";
RenderPassEncoderDrawIndexed :: (renderPassEncoder: RenderPassEncoder, indexCount: u32, instanceCount: u32, firstIndex: u32, baseVertex: s32, firstInstance: u32) -> void #foreign libwgpu "wgpuRenderPassEncoderDrawIndexed";
RenderPassEncoderDrawIndexedIndirect :: (renderPassEncoder: RenderPassEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #foreign libwgpu "wgpuRenderPassEncoderDrawIndexedIndirect";
RenderPassEncoderDrawIndirect :: (renderPassEncoder: RenderPassEncoder, indirectBuffer: Buffer, indirectOffset: u64) -> void #foreign libwgpu "wgpuRenderPassEncoderDrawIndirect";
RenderPassEncoderEnd :: (renderPassEncoder: RenderPassEncoder) -> void #foreign libwgpu "wgpuRenderPassEncoderEnd";

RenderPassEncoderSetBindGroup :: (renderPassEncoder: RenderPassEncoder, groupIndex: u32, group: BindGroup, dynamicOffsetCount: u32, dynamicOffsets: *u32) -> void #foreign libwgpu "wgpuRenderPassEncoderSetBindGroup";
RenderPassEncoderSetBlendConstant :: (renderPassEncoder: RenderPassEncoder, color: *Color) -> void #foreign libwgpu "wgpuRenderPassEncoderSetBlendConstant";
RenderPassEncoderSetIndexBuffer :: (renderPassEncoder: RenderPassEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) -> void #foreign libwgpu "wgpuRenderPassEncoderSetIndexBuffer";
RenderPassEncoderSetPipeline :: (renderPassEncoder: RenderPassEncoder, pipeline: RenderPipeline) -> void #foreign libwgpu "wgpuRenderPassEncoderSetPipeline";
RenderPassEncoderSetScissorRect :: (renderPassEncoder: RenderPassEncoder, x: u32, y: u32, width: u32, height: u32) -> void #foreign libwgpu "wgpuRenderPassEncoderSetScissorRect";
RenderPassEncoderSetStencilReference :: (renderPassEncoder: RenderPassEncoder, reference: u32) -> void #foreign libwgpu "wgpuRenderPassEncoderSetStencilReference";
RenderPassEncoderSetVertexBuffer :: (renderPassEncoder: RenderPassEncoder, slot: u32, buffer: Buffer, offset: u64, size: u64) -> void #foreign libwgpu "wgpuRenderPassEncoderSetVertexBuffer";
RenderPassEncoderSetViewport :: (renderPassEncoder: RenderPassEncoder, x: float, y: float, width: float, height: float, minDepth: float, maxDepth: float) -> void #foreign libwgpu "wgpuRenderPassEncoderSetViewport";

// Methods of Surface
SurfaceGetPreferredFormat :: (surface: Surface, adapter: Adapter) -> TextureFormat #foreign libwgpu "wgpuSurfaceGetPreferredFormat";

// Methods of SwapChain
SwapChainGetCurrentTextureView :: (swapChain: SwapChain) -> TextureView #foreign libwgpu "wgpuSwapChainGetCurrentTextureView";
SwapChainPresent :: (swapChain: SwapChain) -> void #foreign libwgpu "wgpuSwapChainPresent";

// Methods of Texture
TextureCreateView :: (texture: Texture, descriptor: *TextureViewDescriptor) -> TextureView #foreign libwgpu "wgpuTextureCreateView";
TextureDestroy :: (texture: Texture) -> void #foreign libwgpu "wgpuTextureDestroy";