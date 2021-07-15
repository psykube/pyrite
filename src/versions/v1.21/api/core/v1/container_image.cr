# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Describe a container image
  class Api::Core::V1::ContainerImage < Kubernetes::Spec
    # Names by which this image is known. e.g. [["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"]](["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"])
    @[::JSON::Field(key: "names")]
    @[::YAML::Field(key: "names")]
    property names : Array(String)

    # The size of the image in bytes.
    @[::JSON::Field(key: "sizeBytes")]
    @[::YAML::Field(key: "sizeBytes")]
    property size_bytes : Int32 | Nil

    def initialize(*, @names : Array, @size_bytes : Int32 | Nil = nil)
    end
  end
end
