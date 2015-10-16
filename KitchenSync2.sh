#!/bin/bash

INCLUDE_HIDDEN=0

set -e

if [ $# -lt 2 ] ; then
	echo "usage: $(basename '$0') [source-directory] [target-directory] [target-directory ...]" >&2
	exit 1
fi

source="$1"
shift
cd "$source"
if [ "$INCLUDE_HIDDEN" == 0 ] ; then
	find -s * -type f -not -name ".*" -exec /Users/tom/GitHub/Shell-script-snippets/echo-args.sh {} "$@" \;
else
	find -s * -type f -exec /Users/tom/GitHub/Shell-script-snippets/echo-args.sh {} "$@" \;
fi