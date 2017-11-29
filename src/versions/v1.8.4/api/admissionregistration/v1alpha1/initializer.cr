# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Initializer describes the name and the failure policy of an initializer, and what resources it applies to.
  class Api::Admissionregistration::V1alpha1::Initializer
    # Name is the identifier of the initializer. It will be added to the object that needs to be initialized. Name should be fully qualified, e.g., alwayspullimages.kubernetes.io, where "alwayspullimages" is the name of the webhook, and kubernetes.io is the name of the organization. Required
    property name : String

    # Rules describes what [resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.](resources/subresources the initializer cares about. The initializer cares about an operation if it matches _any_ Rule. Rule.Resources must not include subresources.)
    property rules : Array(Api::Admissionregistration::V1alpha1::Rule) | Nil

    ::YAML.mapping({
      name:  {type: String, nilable: false, key: "name", getter: false, setter: false},
      rules: {type: Array(Api::Admissionregistration::V1alpha1::Rule), nilable: true, key: "rules", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:  {type: String, nilable: false, key: "name", getter: false, setter: false},
      rules: {type: Array(Api::Admissionregistration::V1alpha1::Rule), nilable: true, key: "rules", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String | Nil = nil, @rules : Array | Nil = nil)
    end
  end
end
