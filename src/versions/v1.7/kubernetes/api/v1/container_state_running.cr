# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerStateRunning is a running state of a container.
  class Kubernetes::Api::V1::ContainerStateRunning < Kubernetes::Spec
    # Time at which the container was last (re-)started
    @[::JSON::Field(key: "startedAt")]
    @[::YAML::Field(key: "startedAt")]
    property started_at : Time | Nil

    def initialize(*, @started_at : Time | Nil = nil)
    end
  end
end
