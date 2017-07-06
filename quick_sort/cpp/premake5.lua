workspace "QuickSort"
  configurations {"Debug"}

  project "quick_sort"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin"

    files { "*.h", "*.cpp" }

    filter "configurations:Debug"
      defines { "DEBUG" }
      symbols "On"
