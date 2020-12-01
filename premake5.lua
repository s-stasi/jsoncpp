project "jsoncpp"
   kind "StaticLib"
   language "C++"
   cppdialect "c++11"
   defines { "DEBUG" }

   targetdir("%{wks.location}/bin/" .. outputdir .. "/%{prj.name}")
   objdir("%{wks.location}/bin-int/" .. outputdir .. "/%{prj.name}")

   includedirs { "include" }
   files { "src/lib_json/**.cpp" }

   filter { "configurations:Debug" }
      defines { "DEBUG" }
      symbols "On"

   filter { "configurations:Release" } 
      defines { "NDEBUG" }
      optimize "On"