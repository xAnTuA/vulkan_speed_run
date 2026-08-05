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
    vk::raii::Context  context;
    vk::raii::Instance instance = nullptr;

    void createInstance(){
      constexpr vk::ApplicationInfo appInfo{.pApplicationName = "Hello triangle",
        .applicationVersion = vk::makeApiVersion(1,0,0,0),
        .pEngineName = " no engine",
        .engineVersion = vk::makeApiVersion(1,0,0,0),
        .apiVersion = vk::ApiVersion14};
    }

    void initWindow(){
      glfwInit();
      glfwWindowHint(GLFW_CLIENT_API,GLFW_NO_API);
      glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);

      window = glfwCreateWindow(800, 700, "Vulkan", nullptr, nullptr);
    }

    void initVulkan(){
      createInstance();

      // vk::InstanceCreateInfo createInfo{
      //   .pApplicationInfo = &appInfo
      // };
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
