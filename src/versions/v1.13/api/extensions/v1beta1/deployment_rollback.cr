# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED. DeploymentRollback stores the information required to rollback a deployment.
  class Api::Extensions::V1beta1::DeploymentRollback
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#resources](https://git.k8s.io/community/contributors/devel/api-conventions.md#resources)
    property api_version : String | Nil

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    property kind : String | Nil

    # Required: This must match the Name of a deployment.
    property name : String

    # The config of this deployment rollback.
    property rollback_to : Api::Extensions::V1beta1::RollbackConfig

    # The annotations to be updated to a deployment
    property updated_annotations : Hash(String, String) | Nil

    ::YAML.mapping({
      api_version:         {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      kind:                {type: String, nilable: true, key: "kind", getter: false, setter: false},
      name:                {type: String, nilable: false, key: "name", getter: false, setter: false},
      rollback_to:         {type: Api::Extensions::V1beta1::RollbackConfig, nilable: false, key: "rollbackTo", getter: false, setter: false},
      updated_annotations: {type: Hash(String, String), nilable: true, key: "updatedAnnotations", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:         {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      kind:                {type: String, nilable: true, key: "kind", getter: false, setter: false},
      name:                {type: String, nilable: false, key: "name", getter: false, setter: false},
      rollback_to:         {type: Api::Extensions::V1beta1::RollbackConfig, nilable: false, key: "rollbackTo", getter: false, setter: false},
      updated_annotations: {type: Hash(String, String), nilable: true, key: "updatedAnnotations", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @rollback_to : Api::Extensions::V1beta1::RollbackConfig, @api_version : String | Nil = nil, @kind : String | Nil = nil, @updated_annotations : Hash(String, String) | Nil = nil)
    end

    # create rollback of a Deployment
    def create(context : String | Nil = nil, dry_run : String | Nil = nil, include_uninitialized : Bool | Nil = nil)
    end
  end
end
