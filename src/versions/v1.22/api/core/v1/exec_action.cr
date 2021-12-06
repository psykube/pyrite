# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExecAction describes a "run in container" action.
  class Api::Core::V1::ExecAction < Kubernetes::Spec
    # Command is the command line to execute inside the container, the working directory for the command  is root ('/') in the container's filesystem. The command is simply exec'd, it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated as [live/healthy and non-zero is unhealthy.](live/healthy and non-zero is unhealthy.)
    @[::JSON::Field(key: "command")]
    @[::YAML::Field(key: "command")]
    property command : Array(String) | Nil

    def initialize(*, @command : Array | Nil = nil)
    end
  end
end
