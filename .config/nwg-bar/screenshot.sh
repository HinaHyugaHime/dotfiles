#!/usr/bin/env bash

MODE=$1

if [ -z "$MODE" ]; then
  MODE=output
fi

hyprshot -r -m $MODE | swappy -f -
