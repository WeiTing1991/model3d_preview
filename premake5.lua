workspace "HelloWorld"
    configurations { "Debug", "Release" }

project "HelloWorld"
    kind "ConsoleApp"
    language "C++"
    targetdir "bin/%{cfg.buildcfg}"

    files { "**.cpp" } -- Adjust file patterns as needed

    filter "configurations:Debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:Release"
        defines { "NDEBUG" }
        optimize "On"


