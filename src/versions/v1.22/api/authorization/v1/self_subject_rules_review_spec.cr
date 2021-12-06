# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
  class Api::Authorization::V1::SelfSubjectRulesReviewSpec < Kubernetes::Spec
    # Namespace to evaluate rules for. Required.
    @[::JSON::Field(key: "namespace")]
    @[::YAML::Field(key: "namespace")]
    property namespace : String | Nil

    def initialize(*, @namespace : String | Nil = nil)
    end
  end
end
