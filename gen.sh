#!/bin/bash

# https://github.com/protocolbuffers/protobuf.git 内のsrcディレクトリを指すようにする
PROTOBUF_ROOT=~/git/protobuf/src

OUT=./gen

mkdir -p $OUT

grpc_tools_ruby_protoc ./proto/*.proto \
                       -I $PROTOBUF_ROOT \
                       -I ../remote_plugin_call/proto \
                       -I ./proto \
                       --ruby_out=$OUT \
                       --grpc_out=$OUT
