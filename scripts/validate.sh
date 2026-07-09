#!/usr/bin/env bash
set -euo pipefail

bash -n rpi-clone rpi-clone-setup

rpi_clone_output=$(./rpi-clone 2>&1 || true)
grep -q 'rpi-clone needs to be run as root' <<<"$rpi_clone_output"
grep -Eq '^version=[0-9]+[.][0-9]+[.][0-9]+$' rpi-clone
./rpi-clone-setup 2>&1 | grep -q 'You must be root to run rpi-clone-setup'

echo "rpi-clone shell syntax ok"
