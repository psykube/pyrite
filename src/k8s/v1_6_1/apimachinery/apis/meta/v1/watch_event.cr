# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Event represents a single event to a watched resource.
class K8S::V1_6_1::Apimachinery::Apis::Meta::V1::WatchEvent
  # Object is:
  #  * If Type is Added or Modified: the new state of the object.
  #  * If Type is Deleted: the state of the object immediately before deletion.
  #  * If Type is Error: *Status is recommended; other types may make sense
  #    depending on context.
  property object : ::K8S::V1_6_1::Apimachinery::Runtime::RawExtension

  property type : String

  YAML.mapping({object: {type: ::K8S::V1_6_1::Apimachinery::Runtime::RawExtension, nilable: false, key: object, getter: false, setter: false},
                type:   {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

  JSON.mapping({object: {type: ::K8S::V1_6_1::Apimachinery::Runtime::RawExtension, nilable: false, key: object, getter: false, setter: false},
                type:   {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

  def initialize(@object, @type)
  end
end
