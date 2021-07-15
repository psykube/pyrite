# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
  class Apimachinery::Apis::Meta::V1::StatusCause < Kubernetes::Spec
    # The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
    #
    # Examples:
    #   "name" - the field "name" on the current resource
    #   "items[0].name" - the field "name" on the first array entry in "items"
    @[::JSON::Field(key: "field")]
    @[::YAML::Field(key: "field")]
    property field : String | Nil

    # A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
    @[::JSON::Field(key: "message")]
    @[::YAML::Field(key: "message")]
    property message : String | Nil

    # A machine-readable description of the cause of the error. If this value is empty there is no information available.
    @[::JSON::Field(key: "reason")]
    @[::YAML::Field(key: "reason")]
    property reason : String | Nil

    def initialize(*, @field : String | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
