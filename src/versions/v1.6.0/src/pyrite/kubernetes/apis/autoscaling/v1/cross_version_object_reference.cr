# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CrossVersionObjectReference contains enough information to let you identify the referred resource.
  class Kubernetes::Apis::Autoscaling::V1::CrossVersionObjectReference
    # API version of the referent
    property api_version : String | Nil

    # Kind of the referent; More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds"](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds")
    property kind : String

    # Name of the referent; More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    YAML.mapping({
      api_version: {type: String, nilable: true, key: "apiVersion"},
      kind:        {type: String, nilable: false, key: "kind"},
      name:        {type: String, nilable: false, key: "name"},
    }, true)

    JSON.mapping({
      api_version: {type: String, nilable: true, key: "apiVersion"},
      kind:        {type: String, nilable: false, key: "kind"},
      name:        {type: String, nilable: false, key: "name"},
    }, true)

    def initialize(*, @api_version : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil)
    end
  end
end
