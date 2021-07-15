# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Status of all the conditions for the component as a list of ComponentStatus objects.
  class Kubernetes::Api::V1::ComponentStatusList < Kubernetes::List(Kubernetes::Api::V1::ComponentStatus)
  end
end
