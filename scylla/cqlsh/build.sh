#!/bin/bash

docker build . --rm -t ericskang/cqlsh:latest

docker push ericskang/cqlsh:latest