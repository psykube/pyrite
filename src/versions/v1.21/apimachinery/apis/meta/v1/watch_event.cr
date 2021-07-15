# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Event represents a single event to a watched resource.
  class Apimachinery::Apis::Meta::V1::WatchEvent < Kubernetes::Spec
    # Object is:
    #  * If Type is Added or Modified: the new state of the object.
    #  * If Type is Deleted: the state of the object immediately before deletion.
    #  * If Type is Error: *Status is recommended; other types may make sense
    #    depending on context.
    @[::JSON::Field(key: "object")]
    @[::YAML::Field(key: "object")]
    property object : Apimachinery::Runtime::RawExtension

    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String

    def initialize(*, @object : Apimachinery::Runtime::RawExtension, @type : String)
    end
  end
end
