# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus
    # acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
    property accepted_names : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames

    # conditions indicate state for particular aspects of a CustomResourceDefinition
    property conditions : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionCondition) | Nil

    # storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
    property stored_versions : Array(String)

    ::YAML.mapping({
      accepted_names:  {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames, nilable: false, key: "acceptedNames", getter: false, setter: false},
      conditions:      {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionCondition), nilable: true, key: "conditions", getter: false, setter: false},
      stored_versions: {type: Array(String), nilable: false, key: "storedVersions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      accepted_names:  {type: ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames, nilable: false, key: "acceptedNames", getter: false, setter: false},
      conditions:      {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionCondition), nilable: true, key: "conditions", getter: false, setter: false},
      stored_versions: {type: Array(String), nilable: false, key: "storedVersions", getter: false, setter: false},
    }, true)

    def initialize(*, @accepted_names : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionNames, @stored_versions : Array, @conditions : Array | Nil = nil)
    end
  end
end
