# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.boing.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/boing.app/Contents/MacOS/boing
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/boing.app/Contents/MacOS/boing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/boing.app/Contents/MacOS/boing


PostBuild.clipboard.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/clipboard
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/clipboard:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/clipboard


PostBuild.cursor.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/cursor
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/cursor:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/cursor


PostBuild.empty.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/empty.app/Contents/MacOS/empty
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/empty.app/Contents/MacOS/empty:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/empty.app/Contents/MacOS/empty


PostBuild.events.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/events
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/events:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/events


PostBuild.gamma.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/gamma.app/Contents/MacOS/gamma
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/gamma.app/Contents/MacOS/gamma:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/gamma.app/Contents/MacOS/gamma


PostBuild.gears.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/gears.app/Contents/MacOS/gears
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/gears.app/Contents/MacOS/gears:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/gears.app/Contents/MacOS/gears


PostBuild.glfw.Debug:
/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.dylib:
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.dylib


PostBuild.glfwinfo.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/glfwinfo
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/glfwinfo:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/glfwinfo


PostBuild.heightmap.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/heightmap.app/Contents/MacOS/heightmap
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/heightmap.app/Contents/MacOS/heightmap:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/heightmap.app/Contents/MacOS/heightmap


PostBuild.icon.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/icon.app/Contents/MacOS/icon
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/icon.app/Contents/MacOS/icon:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/icon.app/Contents/MacOS/icon


PostBuild.iconify.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/iconify
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/iconify:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/iconify


PostBuild.inputlag.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/inputlag.app/Contents/MacOS/inputlag
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/inputlag.app/Contents/MacOS/inputlag:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/inputlag.app/Contents/MacOS/inputlag


PostBuild.joysticks.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/joysticks.app/Contents/MacOS/joysticks
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/joysticks.app/Contents/MacOS/joysticks:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/joysticks.app/Contents/MacOS/joysticks


PostBuild.monitors.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/monitors
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/monitors:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/monitors


PostBuild.msaa.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/msaa
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/msaa:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/msaa


PostBuild.offscreen.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/offscreen
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/offscreen:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/offscreen


PostBuild.opacity.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/opacity.app/Contents/MacOS/opacity
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/opacity.app/Contents/MacOS/opacity:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/opacity.app/Contents/MacOS/opacity


PostBuild.particles.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/particles.app/Contents/MacOS/particles
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/particles.app/Contents/MacOS/particles:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/particles.app/Contents/MacOS/particles


PostBuild.reopen.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/reopen
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/reopen:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/reopen


PostBuild.sharing.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/sharing.app/Contents/MacOS/sharing
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/sharing.app/Contents/MacOS/sharing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/sharing.app/Contents/MacOS/sharing


PostBuild.simple.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/simple.app/Contents/MacOS/simple
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/simple.app/Contents/MacOS/simple:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/simple.app/Contents/MacOS/simple


PostBuild.splitview.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/splitview.app/Contents/MacOS/splitview
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/splitview.app/Contents/MacOS/splitview:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/splitview.app/Contents/MacOS/splitview


PostBuild.tearing.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/tearing.app/Contents/MacOS/tearing
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/tearing.app/Contents/MacOS/tearing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/threads.app/Contents/MacOS/threads
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/threads.app/Contents/MacOS/threads:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/threads.app/Contents/MacOS/threads


PostBuild.timeout.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/timeout.app/Contents/MacOS/timeout
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/timeout.app/Contents/MacOS/timeout:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/timeout.app/Contents/MacOS/timeout


PostBuild.title.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/title.app/Contents/MacOS/title
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/title.app/Contents/MacOS/title:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/title.app/Contents/MacOS/title


PostBuild.triangle-vulkan.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/triangle-vulkan
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/triangle-vulkan:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/triangle-vulkan


PostBuild.wave.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/wave.app/Contents/MacOS/wave
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/wave.app/Contents/MacOS/wave:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Debug/wave.app/Contents/MacOS/wave


PostBuild.windows.Debug:
PostBuild.glfw.Debug: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/windows.app/Contents/MacOS/windows
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/windows.app/Contents/MacOS/windows:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Debug/windows.app/Contents/MacOS/windows


PostBuild.boing.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/boing.app/Contents/MacOS/boing
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/boing.app/Contents/MacOS/boing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/boing.app/Contents/MacOS/boing


PostBuild.clipboard.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/clipboard
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/clipboard:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/clipboard


PostBuild.cursor.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/cursor
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/cursor:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/cursor


PostBuild.empty.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/empty.app/Contents/MacOS/empty
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/empty.app/Contents/MacOS/empty:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/empty.app/Contents/MacOS/empty


PostBuild.events.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/events
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/events:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/events


PostBuild.gamma.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/gamma.app/Contents/MacOS/gamma
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/gamma.app/Contents/MacOS/gamma:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/gamma.app/Contents/MacOS/gamma


PostBuild.gears.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/gears.app/Contents/MacOS/gears
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/gears.app/Contents/MacOS/gears:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/gears.app/Contents/MacOS/gears


PostBuild.glfw.Release:
/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.dylib:
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.dylib


PostBuild.glfwinfo.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/glfwinfo
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/glfwinfo:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/glfwinfo


PostBuild.heightmap.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/heightmap.app/Contents/MacOS/heightmap
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/heightmap.app/Contents/MacOS/heightmap:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/heightmap.app/Contents/MacOS/heightmap


PostBuild.icon.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/icon.app/Contents/MacOS/icon
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/icon.app/Contents/MacOS/icon:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/icon.app/Contents/MacOS/icon


PostBuild.iconify.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/iconify
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/iconify:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/iconify


PostBuild.inputlag.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/inputlag.app/Contents/MacOS/inputlag
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/inputlag.app/Contents/MacOS/inputlag:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/inputlag.app/Contents/MacOS/inputlag


PostBuild.joysticks.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/joysticks.app/Contents/MacOS/joysticks
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/joysticks.app/Contents/MacOS/joysticks:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/joysticks.app/Contents/MacOS/joysticks


PostBuild.monitors.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/monitors
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/monitors:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/monitors


PostBuild.msaa.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/msaa
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/msaa:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/msaa


PostBuild.offscreen.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/offscreen
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/offscreen:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/offscreen


PostBuild.opacity.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/opacity.app/Contents/MacOS/opacity
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/opacity.app/Contents/MacOS/opacity:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/opacity.app/Contents/MacOS/opacity


PostBuild.particles.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/particles.app/Contents/MacOS/particles
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/particles.app/Contents/MacOS/particles:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/particles.app/Contents/MacOS/particles


PostBuild.reopen.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/reopen
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/reopen:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/reopen


PostBuild.sharing.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/sharing.app/Contents/MacOS/sharing
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/sharing.app/Contents/MacOS/sharing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/sharing.app/Contents/MacOS/sharing


PostBuild.simple.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/simple.app/Contents/MacOS/simple
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/simple.app/Contents/MacOS/simple:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/simple.app/Contents/MacOS/simple


PostBuild.splitview.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/splitview.app/Contents/MacOS/splitview
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/splitview.app/Contents/MacOS/splitview:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/splitview.app/Contents/MacOS/splitview


PostBuild.tearing.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/tearing.app/Contents/MacOS/tearing
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/tearing.app/Contents/MacOS/tearing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/threads.app/Contents/MacOS/threads
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/threads.app/Contents/MacOS/threads:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/threads.app/Contents/MacOS/threads


PostBuild.timeout.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/timeout.app/Contents/MacOS/timeout
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/timeout.app/Contents/MacOS/timeout:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/timeout.app/Contents/MacOS/timeout


PostBuild.title.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/title.app/Contents/MacOS/title
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/title.app/Contents/MacOS/title:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/title.app/Contents/MacOS/title


PostBuild.triangle-vulkan.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/triangle-vulkan
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/triangle-vulkan:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/triangle-vulkan


PostBuild.wave.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/wave.app/Contents/MacOS/wave
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/wave.app/Contents/MacOS/wave:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/Release/wave.app/Contents/MacOS/wave


PostBuild.windows.Release:
PostBuild.glfw.Release: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/windows.app/Contents/MacOS/windows
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/windows.app/Contents/MacOS/windows:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/Release/windows.app/Contents/MacOS/windows


PostBuild.boing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/boing.app/Contents/MacOS/boing
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/boing.app/Contents/MacOS/boing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/boing.app/Contents/MacOS/boing


PostBuild.clipboard.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/clipboard
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/clipboard:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/clipboard


PostBuild.cursor.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/cursor
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/cursor:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/cursor


PostBuild.empty.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/empty.app/Contents/MacOS/empty
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/empty.app/Contents/MacOS/empty:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/empty.app/Contents/MacOS/empty


PostBuild.events.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/events
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/events:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/events


PostBuild.gamma.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/gamma.app/Contents/MacOS/gamma
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/gamma.app/Contents/MacOS/gamma:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/gamma.app/Contents/MacOS/gamma


PostBuild.gears.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/gears.app/Contents/MacOS/gears
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/gears.app/Contents/MacOS/gears:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/gears.app/Contents/MacOS/gears


PostBuild.glfw.MinSizeRel:
/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.dylib:
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.dylib


PostBuild.glfwinfo.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/glfwinfo
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/glfwinfo:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/glfwinfo


PostBuild.heightmap.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap


PostBuild.icon.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/icon.app/Contents/MacOS/icon
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/icon.app/Contents/MacOS/icon:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/icon.app/Contents/MacOS/icon


PostBuild.iconify.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/iconify
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/iconify:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/iconify


PostBuild.inputlag.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/inputlag.app/Contents/MacOS/inputlag
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/inputlag.app/Contents/MacOS/inputlag:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/inputlag.app/Contents/MacOS/inputlag


PostBuild.joysticks.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/joysticks.app/Contents/MacOS/joysticks
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/joysticks.app/Contents/MacOS/joysticks:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/joysticks.app/Contents/MacOS/joysticks


PostBuild.monitors.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/monitors
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/monitors:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/monitors


PostBuild.msaa.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/msaa
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/msaa:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/msaa


PostBuild.offscreen.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/offscreen
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/offscreen:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/offscreen


PostBuild.opacity.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/opacity.app/Contents/MacOS/opacity
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/opacity.app/Contents/MacOS/opacity:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/opacity.app/Contents/MacOS/opacity


PostBuild.particles.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/particles.app/Contents/MacOS/particles
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/particles.app/Contents/MacOS/particles:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/particles.app/Contents/MacOS/particles


PostBuild.reopen.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/reopen
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/reopen:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/reopen


PostBuild.sharing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/sharing.app/Contents/MacOS/sharing
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/sharing.app/Contents/MacOS/sharing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/sharing.app/Contents/MacOS/sharing


PostBuild.simple.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/simple.app/Contents/MacOS/simple
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/simple.app/Contents/MacOS/simple:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/simple.app/Contents/MacOS/simple


PostBuild.splitview.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview


PostBuild.tearing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing


PostBuild.threads.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/threads.app/Contents/MacOS/threads
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/threads.app/Contents/MacOS/threads:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/threads.app/Contents/MacOS/threads


PostBuild.timeout.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/timeout.app/Contents/MacOS/timeout
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/timeout.app/Contents/MacOS/timeout:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/timeout.app/Contents/MacOS/timeout


PostBuild.title.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/title.app/Contents/MacOS/title
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/title.app/Contents/MacOS/title:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/title.app/Contents/MacOS/title


PostBuild.triangle-vulkan.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/triangle-vulkan
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/triangle-vulkan:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/triangle-vulkan


PostBuild.wave.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/wave.app/Contents/MacOS/wave
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/wave.app/Contents/MacOS/wave:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/MinSizeRel/wave.app/Contents/MacOS/wave


PostBuild.windows.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/windows.app/Contents/MacOS/windows
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/windows.app/Contents/MacOS/windows:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/MinSizeRel/windows.app/Contents/MacOS/windows


PostBuild.boing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing


PostBuild.clipboard.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/clipboard
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/clipboard:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/clipboard


PostBuild.cursor.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/cursor
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/cursor:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/cursor


PostBuild.empty.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty


PostBuild.events.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/events
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/events:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/events


PostBuild.gamma.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/gamma.app/Contents/MacOS/gamma
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/gamma.app/Contents/MacOS/gamma:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/gamma.app/Contents/MacOS/gamma


PostBuild.gears.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears


PostBuild.glfw.RelWithDebInfo:
/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.dylib:
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.dylib


PostBuild.glfwinfo.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/glfwinfo
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/glfwinfo:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/glfwinfo


PostBuild.heightmap.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap


PostBuild.icon.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/icon.app/Contents/MacOS/icon
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/icon.app/Contents/MacOS/icon:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/icon.app/Contents/MacOS/icon


PostBuild.iconify.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/iconify
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/iconify:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/iconify


PostBuild.inputlag.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/inputlag.app/Contents/MacOS/inputlag
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/inputlag.app/Contents/MacOS/inputlag:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/inputlag.app/Contents/MacOS/inputlag


PostBuild.joysticks.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/joysticks.app/Contents/MacOS/joysticks
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/joysticks.app/Contents/MacOS/joysticks:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/joysticks.app/Contents/MacOS/joysticks


PostBuild.monitors.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/monitors
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/monitors:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/monitors


PostBuild.msaa.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/msaa
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/msaa:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/msaa


PostBuild.offscreen.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/offscreen
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/offscreen:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/offscreen


PostBuild.opacity.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/opacity.app/Contents/MacOS/opacity
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/opacity.app/Contents/MacOS/opacity:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/opacity.app/Contents/MacOS/opacity


PostBuild.particles.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles


PostBuild.reopen.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/reopen
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/reopen:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/reopen


PostBuild.sharing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/sharing.app/Contents/MacOS/sharing
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/sharing.app/Contents/MacOS/sharing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/sharing.app/Contents/MacOS/sharing


PostBuild.simple.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple


PostBuild.splitview.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview


PostBuild.tearing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing


PostBuild.threads.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads


PostBuild.timeout.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/timeout.app/Contents/MacOS/timeout
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/timeout.app/Contents/MacOS/timeout:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/timeout.app/Contents/MacOS/timeout


PostBuild.title.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/title.app/Contents/MacOS/title
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/title.app/Contents/MacOS/title:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/title.app/Contents/MacOS/title


PostBuild.triangle-vulkan.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/triangle-vulkan
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/triangle-vulkan:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/triangle-vulkan


PostBuild.wave.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave
/Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave


PostBuild.windows.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows
/Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows:\
	/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib
	/bin/rm -f /Users/hexk/Desktop/glfw-3.3.2/Build/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows




# For each target create a dummy ruleso the target does not have to exist
/Users/hexk/Desktop/glfw-3.3.2/Build/src/Debug/libglfw.3.3.dylib:
/Users/hexk/Desktop/glfw-3.3.2/Build/src/MinSizeRel/libglfw.3.3.dylib:
/Users/hexk/Desktop/glfw-3.3.2/Build/src/RelWithDebInfo/libglfw.3.3.dylib:
/Users/hexk/Desktop/glfw-3.3.2/Build/src/Release/libglfw.3.3.dylib:
