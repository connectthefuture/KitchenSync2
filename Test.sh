#!/bin/bash

set -e

INCLUDE_HIDDEN=0

cd "$1"

find -s * -type f -exec sh -c 'echo copy {}; \
	echo verify {}' \;
