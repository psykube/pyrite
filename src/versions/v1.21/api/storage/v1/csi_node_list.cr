# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CSINodeList is a collection of CSINode objects.
  class Api::Storage::V1::CSINodeList < Kubernetes::List(Api::Storage::V1::CSINode)
  end
end
