#!/usr/bin/env bash
# demonstrating a multi-position shift
#
echo
echo "The original parameters: $*"
shift 2
echo "Here's the new firsrt parameter: $1"
