#!/bin/bash

git clone -b main --depth=1 https://github.com/uiriansan/SilentSDDM || exit 1
cd SilentSDDM || exit 1
./install.sh
