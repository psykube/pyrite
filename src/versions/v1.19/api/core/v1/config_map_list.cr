# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ConfigMapList is a resource containing a list of ConfigMap objects.
  class Api::Core::V1::ConfigMapList < Kubernetes::List(Api::Core::V1::ConfigMap)
  end
end
