#!/bin/sh
make -C /Users/hexk/Desktop/glfw-3.3.2/Build/src -f /Users/hexk/Desktop/glfw-3.3.2/Build/src/CMakeScripts/glfw_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
