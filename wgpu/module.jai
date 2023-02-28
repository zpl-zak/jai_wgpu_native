#load "native.jai";
#load "rs.jai";
#load "helpers.jai";

#scope_module

size_t  :: u64;

#if OS == .WINDOWS  libwgpu :: #library "win/wgpu_native";
#if OS == .MACOS    libwgpu :: #library "mac/wgpu_native";
#if OS == .LINUX    libwgpu :: #library "linux/wgpu_native";