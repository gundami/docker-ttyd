#!/bin/bash
set -e
#set -x

TTYD_ARGS="bash"
TTYD_ARGS="-c $USERNAME:$PASSWORD $TTYD_ARGS "
# Start ttyd
exec ttyd $TTYD_ARGS "$@"

