# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Initializer describes the name and the failure policy of an initializer, and what resources it applies to.
  class Api::Admissionregistration::V1alpha1::Initializer
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Name is the identifier of the initializer. It will be added to the object that needs to be initialized. Name should be fully qualified, e.g., alwayspullimages.kubernetes.io, where "alwayspullimages" is the name of the webhook, and kubernetes.io is the name of the organization. Required
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Rules describes what [resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.](resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.)
    @[::JSON::Field(key: "rules")]
    @[::YAML::Field(key: "rules")]
    property rules : Array(Api::Admissionregistration::V1alpha1::Rule) | Nil

    def initialize(*, @name : String, @rules : Array | Nil = nil)
    end
  end
end
