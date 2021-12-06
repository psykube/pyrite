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

    # FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: "FieldsV1"
    @[::JSON::Field(key: "fieldsType")]
    @[::YAML::Field(key: "fieldsType")]
    property fields_type : String | Nil

    # FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
    @[::JSON::Field(key: "fieldsV1")]
    @[::YAML::Field(key: "fieldsV1")]
    property fields_v1 : Apimachinery::Apis::Meta::V1::FieldsV1 | Nil

    # Manager is an identifier of the workflow managing these fields.
    @[::JSON::Field(key: "manager")]
    @[::YAML::Field(key: "manager")]
    property manager : String | Nil

    # Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
    @[::JSON::Field(key: "operation")]
    @[::YAML::Field(key: "operation")]
    property operation : String | Nil

    # Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource.
    @[::JSON::Field(key: "subresource")]
    @[::YAML::Field(key: "subresource")]
    property subresource : String | Nil

    # Time is timestamp of when these fields were set. It should always be empty if Operation is 'Apply'
    @[::JSON::Field(key: "time")]
    @[::YAML::Field(key: "time")]
    property time : Time | Nil

    def initialize(*, @api_version : String | Nil = nil, @fields_type : String | Nil = nil, @fields_v1 : Apimachinery::Apis::Meta::V1::FieldsV1 | Nil = nil, @manager : String | Nil = nil, @operation : String | Nil = nil, @subresource : String | Nil = nil, @time : Time | Nil = nil)
    end
  end
end
