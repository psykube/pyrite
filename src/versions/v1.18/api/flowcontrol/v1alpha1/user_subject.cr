# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # UserSubject holds detailed information for user-kind subject.
  class Api::Flowcontrol::V1alpha1::UserSubject
    # `name` is the username that matches, or "*" to match all usernames. Required.
    property name : String

    ::YAML.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String)
    end
  end
end
