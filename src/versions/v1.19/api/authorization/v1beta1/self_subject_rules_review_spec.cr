# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Authorization::V1beta1::SelfSubjectRulesReviewSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Namespace to evaluate rules for. Required.
    @[::JSON::Field(key: "namespace")]
    @[::YAML::Field(key: "namespace")]
    property namespace : String | Nil

    def initialize(*, @namespace : String | Nil = nil)
    end
  end
end
