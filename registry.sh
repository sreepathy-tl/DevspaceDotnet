#!/bin/bash
docker run -d \
  -p 8432:5000 \
  --restart=always \
  --name registry \
  -v /mnt/registry:/var/lib/registry \
  registry:2