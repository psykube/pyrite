# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
  class Apimachinery::Apis::Meta::V1::Preconditions
    # Specifies the target ResourceVersion
    property resource_version : String | Nil

    # Specifies the target UID.
    property uid : String | Nil

    ::YAML.mapping({
      resource_version: {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
      uid:              {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      resource_version: {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
      uid:              {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    def initialize(*, @resource_version : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
