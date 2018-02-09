#!/bin/bash

kubectl get pods | grep -e cqlsh

kubectl exec -ti cqlsh-6954d48dd4-kb6vk sh
cqlsh scylla
