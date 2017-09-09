# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerStateRunning is a running state of a container.
  class Kubernetes::Api::V1::ContainerStateRunning
    # Time at which the container was last (re-)started
    property started_at : Time | Nil

    YAML.mapping({
      started_at: {type: Time, nilable: true, key: "startedAt"},
    }, true)

    JSON.mapping({
      started_at: {type: Time, nilable: true, key: "startedAt"},
    }, true)

    def initialize(*, @started_at : Time | Nil = nil)
    end
  end
end
