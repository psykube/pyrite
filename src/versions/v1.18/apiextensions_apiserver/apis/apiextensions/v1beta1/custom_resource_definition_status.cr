# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionStatus
    # acceptedNames are the names that are actually being used to serve discovery. They may be different than the names in spec.
    property accepted_names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames | Nil

    # conditions indicate state for particular aspects of a CustomResourceDefinition
    property conditions : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition) | Nil

    # storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
    property stored_versions : Array(String) | Nil

    ::YAML.mapping({
      accepted_names:  {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, nilable: true, key: "acceptedNames", getter: false, setter: false},
      conditions:      {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition), nilable: true, key: "conditions", getter: false, setter: false},
      stored_versions: {type: Array(String), nilable: true, key: "storedVersions", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      accepted_names:  {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames, nilable: true, key: "acceptedNames", getter: false, setter: false},
      conditions:      {type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionCondition), nilable: true, key: "conditions", getter: false, setter: false},
      stored_versions: {type: Array(String), nilable: true, key: "storedVersions", getter: false, setter: false},
    }, true)

    def initialize(*, @accepted_names : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionNames | Nil = nil, @conditions : Array | Nil = nil, @stored_versions : Array | Nil = nil)
    end
  end
end
