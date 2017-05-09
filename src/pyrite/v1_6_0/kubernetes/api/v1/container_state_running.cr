# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # ContainerStateRunning is a running state of a container.
  class Definitions::Kubernetes::Api::V1::ContainerStateRunning
    # Time at which the container was last (re-)started
    property started_at : Apimachinery::Apis::Meta::V1::Time

    YAML.mapping({started_at: {type: Apimachinery::Apis::Meta::V1::Time, nilable: true, key: startedAt, getter: false, setter: false}}, true)

    JSON.mapping({started_at: {type: Apimachinery::Apis::Meta::V1::Time, nilable: true, key: startedAt, getter: false, setter: false}}, true)

    def initialize(@started_at : Apimachinery::Apis::Meta::V1::Time = nil)
    end
  end
end
