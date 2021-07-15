# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceRequirements describes the compute resource requirements.
  class Kubernetes::Api::V1::ResourceRequirements < Kubernetes::Spec
    # Limits describes the maximum amount of compute resources allowed. More info: [http://kubernetes.io/docs/user-guide/compute-resources/](http://kubernetes.io/docs/user-guide/compute-resources/)
    @[::JSON::Field(key: "limits")]
    @[::YAML::Field(key: "limits")]
    property limits : Hash(String, String) | Nil

    # Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: [http://kubernetes.io/docs/user-guide/compute-resources/](http://kubernetes.io/docs/user-guide/compute-resources/)
    @[::JSON::Field(key: "requests")]
    @[::YAML::Field(key: "requests")]
    property requests : Hash(String, String) | Nil

    def initialize(*, @limits : Hash(String, String) | Nil = nil, @requests : Hash(String, String) | Nil = nil)
    end
  end
end
