# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RuleWithOperations is a tuple of Operations and Resources. It is recommended to make sure that all the tuple expansions are valid.
  class Api::Admissionregistration::V1beta1::RuleWithOperations
    include ::JSON::Serializable
    include ::YAML::Serializable

    # APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is present, the length of the slice must be one. Required.
    @[JSON::Field(key: "apiGroups")]
    @[YAML::Field(key: "apiGroups")]
    property api_groups : Array(String) | Nil

    # APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is present, the length of the slice must be one. Required.
    @[JSON::Field(key: "apiVersions")]
    @[YAML::Field(key: "apiVersions")]
    property api_versions : Array(String) | Nil

    # Operations is the operations the admission hook cares about - CREATE, UPDATE, or * for all operations. If '*' is present, the length of the slice must be one. Required.
    @[JSON::Field(key: "operations")]
    @[YAML::Field(key: "operations")]
    property operations : Array(String) | Nil

    # Resources is a list of resources this rule applies to.
    #
    # For example: 'pods' means pods. ['pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.]('pods/log' means the log subresource of pods. '*' means all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale' means all scale subresources. '*/*' means all resources and their subresources.)
    #
    # If wildcard is present, the validation rule will ensure resources do not overlap with each other.
    #
    # Depending on the enclosing object, subresources might not be allowed. Required.
    @[JSON::Field(key: "resources")]
    @[YAML::Field(key: "resources")]
    property resources : Array(String) | Nil

    def initialize(*, @api_groups : Array | Nil = nil, @api_versions : Array | Nil = nil, @operations : Array | Nil = nil, @resources : Array | Nil = nil)
    end
  end
end
