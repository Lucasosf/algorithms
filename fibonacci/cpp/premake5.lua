workspace "Fibonacci"
  configurations {"Debug", "Release"}
  language "C++"
  targetdir "bin/%{cfg.buildcfg}"
  flags { "C++14" }

  --need to compile gtest
  buildoptions { "-lpthread", "-lrt" }
  links { "pthread" }

  filter "configurations:Debug"
    defines { "DEBUG" }
    flags { "Symbols" }

  filter "configurations:Release"
    defines { "RELEASE" }
    optimize "On"

  project "GoogleTest"
    kind "StaticLib"
    files { "./../../support/cpp/googletest/googletest/src/gtest-all.cc" }
    includedirs {
      "./../../support/cpp/googletest/googletest/include",
      "./../../support/cpp/googletest/googletest"
    }

  project "Fibonacci"
    kind "ConsoleApp"
    files { "*.hpp", "*.cpp" }
    includedirs { "./../../support/cpp/googletest/googletest/include" }
    links { "GoogleTest" }
