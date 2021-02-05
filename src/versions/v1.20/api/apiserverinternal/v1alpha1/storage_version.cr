# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  #
  #  Storage version of a specific resource.
  class Api::Apiserverinternal::V1alpha1::StorageVersion
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "apiserverinternal/v1alpha1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "StorageVersion"
    # The name is <group>.<resource>.
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec is an empty spec. It is here to comply with Kubernetes API style.
    @[JSON::Field(key: "spec")]
    @[YAML::Field(key: "spec")]
    property spec : Api::Apiserverinternal::V1alpha1::StorageVersionSpec

    # API server instances report the version they can decode and the version they encode objects to when persisting objects in the backend.
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : Api::Apiserverinternal::V1alpha1::StorageVersionStatus

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Apiserverinternal::V1alpha1::StorageVersionSpec, @status : Api::Apiserverinternal::V1alpha1::StorageVersionStatus)
    end
  end

  module Resources::Apiserverinternal::V1alpha1
    alias StorageVersion = ::Pyrite::Api::Apiserverinternal::V1alpha1::StorageVersion
  end
end
