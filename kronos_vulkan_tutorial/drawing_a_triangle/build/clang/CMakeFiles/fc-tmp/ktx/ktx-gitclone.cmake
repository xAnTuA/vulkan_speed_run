# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

if(EXISTS "/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/CMakeFiles/fc-stamp/ktx/ktx-gitclone-lastrun.txt" AND EXISTS "/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/CMakeFiles/fc-stamp/ktx/ktx-gitinfo.txt" AND
  "/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/CMakeFiles/fc-stamp/ktx/ktx-gitclone-lastrun.txt" IS_NEWER_THAN "/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/CMakeFiles/fc-stamp/ktx/ktx-gitinfo.txt")
  message(VERBOSE
    "Avoiding repeated git clone, stamp file is up to date: "
    "'/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/CMakeFiles/fc-stamp/ktx/ktx-gitclone-lastrun.txt'"
  )
  return()
endif()

# Even at VERBOSE level, we don't want to see the commands executed, but
# enabling them to be shown for DEBUG may be useful to help diagnose problems.
cmake_language(GET_MESSAGE_LOG_LEVEL active_log_level)
if(active_log_level MATCHES "DEBUG|TRACE")
  set(maybe_show_command COMMAND_ECHO STDOUT)
else()
  set(maybe_show_command "")
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/_deps/ktx-src"
  RESULT_VARIABLE error_code
  ${maybe_show_command}
)
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/_deps/ktx-src'")
endif()

# try the clone 1 + N times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
math(EXPR max_tries "1 + 2")
while(error_code AND number_of_tries LESS ${max_tries})
  if(number_of_tries GREATER 0 AND 0 GREATER 0)
    message(STATUS "Retry #${number_of_tries}, waiting 0 seconds before next attempt...")
    execute_process(COMMAND ${CMAKE_COMMAND} -E sleep 0)
  endif()
  execute_process(
    COMMAND "/usr/sbin/git"
            clone --no-checkout --config "advice.detachedHead=false" "https://github.com/KhronosGroup/KTX-Software.git" "ktx-src"
    WORKING_DIRECTORY "/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/_deps"
    RESULT_VARIABLE error_code
    ${maybe_show_command}
  )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(NOTICE "Had to git clone more than once: ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository:\n  'https://github.com/KhronosGroup/KTX-Software.git'")
endif()

execute_process(
  COMMAND "/usr/sbin/git"
          checkout "v4.4.2" --
  WORKING_DIRECTORY "/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/_deps/ktx-src"
  RESULT_VARIABLE error_code
  ${maybe_show_command}
)
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'v4.4.2'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/sbin/git" 
            submodule update --recursive --init 
    WORKING_DIRECTORY "/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/_deps/ktx-src"
    RESULT_VARIABLE error_code
    ${maybe_show_command}
  )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/_deps/ktx-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy "/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/CMakeFiles/fc-stamp/ktx/ktx-gitinfo.txt" "/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/CMakeFiles/fc-stamp/ktx/ktx-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  ${maybe_show_command}
)
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/antua/Projects/vulkan_speed_run/kronos_vulkan_tutorial/drawing_a_triangle/build/clang/CMakeFiles/fc-stamp/ktx/ktx-gitclone-lastrun.txt'")
endif()
