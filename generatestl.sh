#!/bin/bash

SCRIPT_PATH="$(dirname "$(readlink -f "$0")")"
sudo docker build -t dactyl $SCRIPT_PATH
sudo docker run -it --rm -v "$SCRIPT_PATH/things:/usr/src/app/things" dactyl