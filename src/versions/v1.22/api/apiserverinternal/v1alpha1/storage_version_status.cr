# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # API server instances report the versions they can decode and the version they encode objects to when persisting objects in the backend.
  class Api::Apiserverinternal::V1alpha1::StorageVersionStatus < Kubernetes::Spec
    # If all API server instances agree on the same encoding storage version, then this field is set to that version. Otherwise this field is left empty. API servers should finish updating its storageVersionStatus entry before serving write operations, so that this field will be in sync with the reality.
    @[::JSON::Field(key: "commonEncodingVersion")]
    @[::YAML::Field(key: "commonEncodingVersion")]
    property common_encoding_version : String | Nil

    # The latest available observations of the storageVersion's state.
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Api::Apiserverinternal::V1alpha1::StorageVersionCondition) | Nil

    # The reported versions per API server instance.
    @[::JSON::Field(key: "storageVersions")]
    @[::YAML::Field(key: "storageVersions")]
    property storage_versions : Array(Api::Apiserverinternal::V1alpha1::ServerStorageVersion) | Nil

    def initialize(*, @common_encoding_version : String | Nil = nil, @conditions : Array | Nil = nil, @storage_versions : Array | Nil = nil)
    end
  end
end
