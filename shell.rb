# frozen_string_literal: true

$LOAD_PATH << File.join(__dir__, 'gen')

require 'shell_services_pb'

module Plugin::Shell
  class Server < Mrpc::Shell::ShellService::Service
    def query_root_window(request, call)
      Mrpc::Shell::QueryRootWindowResponse.new(window: Plugin::RemotePluginCall.mrpc_param(Plugin::GUI::Window.active))
    end
  end
end

Plugin.create(:shell) do
  filter_rpc_servers do |servers|
    servers << Plugin::Shell::Server.new
    [servers]
  end

  filter_shell_root_window do |val|
    return val unless val.empty?
    [Plugin::GUI::Window.active]
  end
end
