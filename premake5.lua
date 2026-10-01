project "ImPlot"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("../build/bin/" .. outputdir .. "/%{prj.name}")
    objdir ("../build/bin-int/" .. outputdir .. "/%{prj.name}")

    files {
        "implot.h",
        "implot_internal.h",
        "implot.cpp",
        "implot_items.cpp"
    }

    includedirs {
        ".",
        "../ImGui"
    }

    filter "system:linux"
        pic "On"

    filter {}
