#!/bin/sh
make -C /Users/hexk/Desktop/glfw-3.3.2/Build -f /Users/hexk/Desktop/glfw-3.3.2/Build/CMakeScripts/install_postBuildPhase.make$CONFIGURATION OBJDIR=$(basename "$OBJECT_FILE_DIR_normal") all
