# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeList is a list of PersistentVolume items.
  class Api::Core::V1::PersistentVolumeList < Kubernetes::List(Api::Core::V1::PersistentVolume)
  end
end