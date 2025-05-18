#!/bin/bash
echo stop
docker container stop demo-container
echo remove
docker container  rm demo-container
