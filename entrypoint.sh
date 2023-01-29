#!/bin/bash
set -e
#set -x

TTYD_ARGS="bash"

# Start ttyd
exec ttyd $TTYD_ARGS "$@"

