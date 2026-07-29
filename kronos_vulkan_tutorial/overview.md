Identifying problems

# Origin of vulkan 

Basically hardware changed so new software was required.
More architectures = more complexity,
vulkan solves this for us, by giving abstract layer

everything we need is in vulkan.h

# Triangle so hard?

how to do a triangle:

1. Create vulkan instance (vk::Instance)
2. Get the physical device (vk::PhysicalDevice)
3. After that create instance that identifies as (vk::Device)
4. Know that most operation performed in vulkan are asynchronous (submitted to vk::Queue)
5. if you dont want to create headless app, you need a window and its surface (vk::SurfaceHKR)
6. we also need a swap chain (vk::SwapchainKHR), it gives you image you can modify (basically canva)
7. some platforms allow drawing directly into display skipping window manager
(VK_KHR_display and VK_KHR_display_swapchain extensions)
8. wrap image in (vk::ImageView) to be able to work with it
9. know that (vk::RenderPass and vk::Framebuffer) is no longer needed
10. and isntead of them can define attachment at the start of command recording (vk::beginRendering
and structs like vk::RenderingInfo)
11. (VkPipeline) object is used to do graphic pipeline

> [!NOTE]
> Vulkan pipeline object configuration is immutable after creation, so we need to create new pipeline
> in the case of changing config.

12. many operations are commands so we need to record them in (vk::CommandBuffer)
13. command buffers are alocated from (vk::CommandPool) that is associated with a specific queue
family
14. the commands for triangle are:
- begin the rendering pass
- bind the graphic pipeline
- draw three vertices
- end the render pass

Putting it all together 
- we receive image from swap chain with (device.acquireNextImageKHR)
- next we can select appropriate command buffer for that image and execute it with 
with (graphicsQueue.submit())
- after that we can return image to present it (presentQueue.presentKHR(presentInfo))

> [!INFO]
> dynamic rendering is a bit different instead of starting and ending, we define rendering
> attachments with (vk::BeginRendering)

> [!INFO]
> vulkan supports validation layers, and this guide uses them.
