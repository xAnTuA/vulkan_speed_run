# Whats I'm using

Software:

- os: arch linux-7.1.5
- wm: i3
- edition: nvim
- lsp: clangd

[ x ] nlohmann-json
[ x ] tinygltf
[ x ] tinyobjloader
[ x ] others common ones

Hardware: 

- i5 11400f
- rtx 2070s
- 16GB ram

already cloned https://github.com/KhronosGroup/Vulkan-Tutorial for assets (added to .gitignore)

i will use vulkan using modules, as the future seems bright for that.
also i will use glfw (because its pretty straigh forward), glm, cmake, ninja, clang++



I had bad time figuring out how to correctly import std lib. And i landed of creating std.pcm,
and attaching it on build

that was actually wrong idea, because solution to this is:
set(CMAKE_EXPERIMENTAL_CXX_IMPORT_STD f35a9ac6-8463-4d38-8eec-5d6008153e7d)

tho this is experimental, i believe in future we shall get better support for it

i have taken a while to create better common setup for cmake
