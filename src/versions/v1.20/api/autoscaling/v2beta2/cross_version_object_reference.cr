# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CrossVersionObjectReference contains enough information to let you identify the referred resource.
  class Api::Autoscaling::V2beta2::CrossVersionObjectReference < Kubernetes::Spec
    # API version of the referent
    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # Kind of the referent; More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds"](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds")
    @[::JSON::Field(key: "kind")]
    @[::YAML::Field(key: "kind")]
    property kind : String

    # Name of the referent; More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    def initialize(*, @api_version : String | Nil = nil, @kind : String, @name : String)
    end
  end
end
