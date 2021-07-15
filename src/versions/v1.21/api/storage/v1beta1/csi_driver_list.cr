# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CSIDriverList is a collection of CSIDriver objects.
  class Api::Storage::V1beta1::CSIDriverList < Kubernetes::List(Api::Storage::V1beta1::CSIDriver)
  end
end
