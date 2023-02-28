# Jai wgpu_native Bindings

WIP Jai Bindings for [wgpu_native](https://github.com/gfx-rs/wgpu-native).

# Hello Triangle
**Warning: this example is far from being polished!**

- Put `wgpu` folder in your module folder
- Compile with `jai main.jai`
- Run `bin/jai_wgpu`

## Linux
I don´t have a Linux machine so the linux surface creation is not done. PR welcome.

## Mac
You need to add two extra bindings intro SDL module for Metal. Insert:

```c++
SDL_MetalView :: struct{}
SDL_Metal_CreateView :: (window: *SDL_Window) -> *SDL_MetalView #foreign SDL2;
SDL_Metal_GetLayer :: (metal_view: *SDL_MetalView) -> *void #foreign SDL2;
```

Into `modules/SDL/SDL_render.jai` after line 100. 

You will also need the newest SDL2 dylib the one shipped with the Jai compiler is older (as of 28.2.2023).
