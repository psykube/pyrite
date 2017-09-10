# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Event represents a single event to a watched resource.
  class Apimachinery::Apis::Meta::V1::WatchEvent
    # Object is:
    #  * If Type is Added or Modified: the new state of the object.
    #  * If Type is Deleted: the state of the object immediately before deletion.
    #  * If Type is Error: *Status is recommended; other types may make sense
    #    depending on context.
    property object : Apimachinery::Runtime::RawExtension

    property type : String

    YAML.mapping({
      object: {type: Apimachinery::Runtime::RawExtension, nilable: false, key: "object"},
      type:   {type: String, nilable: false, key: "type"},
    }, true)

    JSON.mapping({
      object: {type: Apimachinery::Runtime::RawExtension, nilable: false, key: "object"},
      type:   {type: String, nilable: false, key: "type"},
    }, true)

    def initialize(*, @object : Apimachinery::Runtime::RawExtension | Nil = nil, @type : String | Nil = nil)
    end
  end
end
