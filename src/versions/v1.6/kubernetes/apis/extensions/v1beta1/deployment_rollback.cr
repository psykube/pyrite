# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentRollback stores the information required to rollback a deployment.
  class Kubernetes::Apis::Extensions::V1beta1::DeploymentRollback < Kubernetes::Spec
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources)
    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "kind")]
    @[::YAML::Field(key: "kind")]
    property kind : String | Nil

    # Required: This must match the Name of a deployment.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # The config of this deployment rollback.
    @[::JSON::Field(key: "rollbackTo")]
    @[::YAML::Field(key: "rollbackTo")]
    property rollback_to : Kubernetes::Apis::Extensions::V1beta1::RollbackConfig

    # The annotations to be updated to a deployment
    @[::JSON::Field(key: "updatedAnnotations")]
    @[::YAML::Field(key: "updatedAnnotations")]
    property updated_annotations : Hash(String, String) | Nil

    def initialize(*, @api_version : String | Nil = nil, @kind : String | Nil = nil, @name : String, @rollback_to : Kubernetes::Apis::Extensions::V1beta1::RollbackConfig, @updated_annotations : Hash(String, String) | Nil = nil)
    end
  end
end
