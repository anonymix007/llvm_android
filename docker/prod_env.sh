#!/bin/bash
set -e

SCRIPT_PATH=$(realpath "$0")
SCRIPT_DIR=$(dirname ${SCRIPT_PATH})
BASE_DIR=$(dirname ${SCRIPT_DIR})/../..
WORK_DIR=/tmpfs/src/git/

docker_img=us-west1-docker.pkg.dev/google.com/android-llvm-kokoro/android-llvm-ubuntu/llvm-ubuntu

docker pull ${docker_img}:latest
docker run -it --rm -v ${BASE_DIR}:${WORK_DIR} --workdir ${WORK_DIR} ${docker_img} /bin/bash

