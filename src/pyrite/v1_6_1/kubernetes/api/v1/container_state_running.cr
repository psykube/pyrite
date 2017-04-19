# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ContainerStateRunning is a running state of a container.
class Pyrite::V1_6_1::Kubernetes::Api::V1::ContainerStateRunning
  # Time at which the container was last (re-)started
  property started_at : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time

  YAML.mapping({started_at: {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: startedAt, getter: false, setter: false}}, true)

  JSON.mapping({started_at: {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: startedAt, getter: false, setter: false}}, true)

  def initialize(@started_at : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time = nil)
  end
end
