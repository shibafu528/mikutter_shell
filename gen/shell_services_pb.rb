# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: shell.proto for package 'mrpc.shell'

require 'grpc'
require 'shell_pb'

module Mrpc
  module Shell
    module ShellService
      class Service

        include ::GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'mrpc.shell.ShellService'

        rpc :QueryRootWindow, ::Google::Protobuf::Empty, ::Mrpc::Shell::QueryRootWindowResponse
      end

      Stub = Service.rpc_stub_class
    end
  end
end