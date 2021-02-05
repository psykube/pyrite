# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus
    include ::JSON::Serializable
    include ::YAML::Serializable

    # AcceptedNames are the names that are actually being used to serve discovery They may be different than the names in spec.
    @[::JSON::Field(key: "acceptedNames")]
    @[::YAML::Field(key: "acceptedNames")]
    property accepted_names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames

    # Conditions indicate state for particular aspects of a CustomResourceDefinition
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition)

    def initialize(*, @accepted_names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, @conditions : Array)
    end
  end
end
