#include <cstdlib>
#include <GLFW/glfw3.h>

import vulkan;
import engine;
import std;

int main(){
  try {
    engine::Instance engine;
    engine.run();
  } catch (const std::exception& e) {
    std::cerr << e.what() << std::endl;
    return EXIT_FAILURE
  }
  return EXIT_SUCCESS
}
