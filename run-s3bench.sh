#!/bin/sh

# build your own test script with designated '-numClients', '-numSamples' and '-objectSize'
# 1. use loop structure to generate test batch (E.g.: to re-evaluate s3 server under the same configuration, or to gather data from a range of parameters)
# 2. use redirection for storing program output to text files

if [ -n "$GOPATH" ]; then
    $GOPATH/bin/s3bench -accessKey=hust -accessSecret=hust2019 -bucket=loadgen -endpoint=http://127.0.0.1:9000 -numClients=10 -numSamples=100 -objectNamePrefix=loadgen -objectSize=1024
else
    ~/go/bin/s3bench -accessKey=hust -accessSecret=hust2019 -bucket=loadgen -endpoint=http://127.0.0.1:9000 -numClients=10 -numSamples=100 -objectNamePrefix=loadgen -objectSize=1024
fi
