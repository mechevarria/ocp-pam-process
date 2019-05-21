#!/usr/bin/env bash

# https://docs.okd.io/latest/dev_guide/copy_files_to_container.html

pod_name=$(oc get pods --selector app=rhpam73-authoring | grep rhpamcentr | awk '{print $1;}')
port=8001

oc port-forward ${pod_name} ${port}:${port}
