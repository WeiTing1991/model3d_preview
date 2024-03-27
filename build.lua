-- premake5.lua

workspcae "Digital Casting App"
    architecture "x64"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }
    startproject "App"

outputdir = %{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}

group "core"
    include "core/build-core.lua"
group ""

includ "App/build-app.lua"
