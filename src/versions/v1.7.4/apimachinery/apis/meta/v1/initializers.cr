# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Initializers tracks the progress of initialization.
  class Apimachinery::Apis::Meta::V1::Initializers
    # Pending is a list of initializers that must execute in order before this object is visible. When the last pending initializer is removed, and no failing result is set, the initializers struct will be set to nil and the object is considered as initialized and visible to all clients.
    property pending : Array(Apimachinery::Apis::Meta::V1::Initializer)

    # If result is set with the Failure field, the object will be persisted to storage and then deleted, ensuring that other clients can observe the deletion.
    property result : Apimachinery::Apis::Meta::V1::Status | Nil

    YAML.mapping({
      pending: {type: Array(Apimachinery::Apis::Meta::V1::Initializer), nilable: false, key: "pending"},
      result:  {type: Apimachinery::Apis::Meta::V1::Status, nilable: true, key: "result"},
    }, true)

    JSON.mapping({
      pending: {type: Array(Apimachinery::Apis::Meta::V1::Initializer), nilable: false, key: "pending"},
      result:  {type: Apimachinery::Apis::Meta::V1::Status, nilable: true, key: "result"},
    }, true)

    def initialize(*, @pending : Array | Nil = nil, @result : Apimachinery::Apis::Meta::V1::Status | Nil = nil)
    end
  end
end
