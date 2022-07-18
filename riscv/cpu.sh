#!/bin/sh

./cpu -namespace /home -key ../uefi/cpu_rsa -timeout9p 1s -sp 42 localhost /bbin/$@
