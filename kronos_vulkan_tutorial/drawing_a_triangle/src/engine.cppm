module;
#include <GLFW/glfw3.h>
export module engine;
import vulkan;

namespace engine{
  export class Instance{
  public:
    void run(){
      initWindow();
      initVulkan();
      mainLoop();
      cleanup();
    }
  private:
    GLFWwindow *window = nullptr;

    void initWindow(){
      glfwInit();
      glfwWindowHint(GLFW_CLIENT_API,GLFW_NO_API);
      glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE)

      window = glfwCreateWindow(800, 700, "Vulkan", nullptr, nullptr);
    }

    void initVulkan(){
      constexpr vk::ApplicationInfo appInfo{.pApplicationName = "Hello triangle",
        .applicationVersion = VK_MAKE_VERSION(1,0,0),
        .pEngineName = " no engine",
        .engineVersion = VK_MAKE_VERSION(1,0,0),
        .apiVersion = vk::ApiVersion14};

      vk::InstanceCreateInfo createInfo{
        .pApplicationInfo = &appInfo
      };
    }
    void mainLoop(){
      while(!glfwWindowShouldClose(window)){
        glfwPollEvents();
      }
    }
    void cleanup(){
      glfwDestroyWindow(window);
      glfwTerminate();
    }
  };
}
