# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CSIStorageCapacityList is a collection of CSIStorageCapacity objects.
  class Api::Storage::V1alpha1::CSIStorageCapacityList < Kubernetes::List(Api::Storage::V1alpha1::CSIStorageCapacity)
  end
end
