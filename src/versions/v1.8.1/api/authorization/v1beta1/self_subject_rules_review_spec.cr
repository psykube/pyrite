# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Authorization::V1beta1::SelfSubjectRulesReviewSpec
    # Namespace to evaluate rules for. Required.
    property namespace : String | Nil

    YAML.mapping({
      namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    }, true)

    JSON.mapping({
      namespace: {type: String, nilable: true, key: "namespace", getter: false, setter: false},
    }, true)

    def initialize(*, @namespace : String | Nil = nil)
    end
  end
end
