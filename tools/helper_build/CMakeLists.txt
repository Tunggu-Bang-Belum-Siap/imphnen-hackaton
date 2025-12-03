cmake_minimum_required(VERSION 3.24)

project(HelperProjectBuild)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

file(GLOB_RECURSE SOURCE_FILES src/*.cpp include/*.hpp)

include_directories(
    include/
)

add_subdirectory(third_party/ftxui)

add_executable(${PROJECT_NAME} ${SOURCE_FILES})

target_link_libraries(${PROJECT_NAME} PRIVATE 
    ftxui::component
    ftxui::dom
    ftxui::screen
)