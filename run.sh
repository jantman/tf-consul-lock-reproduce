#!/bin/bash -x

[ -z "$CONSUL_ADDR" ] && { echo "ERROR: must export CONSUL_ADDR"; exit 1; }

terraform init -backend-config="address=${CONSUL_ADDR}"
TF_LOG=TRACE TF_LOG_PATH=tflog.out terraform apply .
rm -f testfile
