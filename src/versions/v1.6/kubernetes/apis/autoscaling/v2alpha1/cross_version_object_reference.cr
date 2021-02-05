# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CrossVersionObjectReference contains enough information to let you identify the referred resource.
  class Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # API version of the referent
    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # Kind of the referent; More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds"](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds")
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
