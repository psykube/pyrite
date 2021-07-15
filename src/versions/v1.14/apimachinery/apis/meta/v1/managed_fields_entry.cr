# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
  class Apimachinery::Apis::Meta::V1::ManagedFieldsEntry < Kubernetes::Spec
    # APIVersion defines the version of this resource that this field set applies to. The format is ["group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.]("group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.)
    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # Fields identifies a set of fields.
    @[::JSON::Field(key: "fields")]
    @[::YAML::Field(key: "fields")]
    property fields : Apimachinery::Apis::Meta::V1::Fields | Nil

    # Manager is an identifier of the workflow managing these fields.
    @[::JSON::Field(key: "manager")]
    @[::YAML::Field(key: "manager")]
    property manager : String | Nil

    # Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
    @[::JSON::Field(key: "operation")]
    @[::YAML::Field(key: "operation")]
    property operation : String | Nil

    # Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'
    @[::JSON::Field(key: "time")]
    @[::YAML::Field(key: "time")]
    property time : Time | Nil

    def initialize(*, @api_version : String | Nil = nil, @fields : Apimachinery::Apis::Meta::V1::Fields | Nil = nil, @manager : String | Nil = nil, @operation : String | Nil = nil, @time : Time | Nil = nil)
    end
  end
end
