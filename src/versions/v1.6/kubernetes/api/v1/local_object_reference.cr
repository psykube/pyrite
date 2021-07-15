# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
  class Kubernetes::Api::V1::LocalObjectReference < Kubernetes::Spec
    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String | Nil

    def initialize(*, @name : String | Nil = nil)
    end
  end
end
