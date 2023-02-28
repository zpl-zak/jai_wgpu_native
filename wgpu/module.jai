#load "native.jai";
#load "rs.jai";
#load "helpers.jai";

#scope_module

size_t  :: u64;

#if OS == .WINDOWS  libwgpu :: #library "win/libwgpu";
#if OS == .MACOS    libwgpu :: #library "mac/libwgpu";
#if OS == .LINUX    libwgpu :: #library "linux/libwgpu";