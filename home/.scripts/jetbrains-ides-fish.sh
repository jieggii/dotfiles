#!/bin/sh
# workaround to make fish work correctly in Jetbrains IDEs 

if [ -n "$OLD_XDG_CONFIG_HOME" ]; then
	  export XDG_CONFIG_HOME="$OLD_XDG_CONFIG_HOME"
  else
	    unset XDG_CONFIG_HOME
fi
exec fish
