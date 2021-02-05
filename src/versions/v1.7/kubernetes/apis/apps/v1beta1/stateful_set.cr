# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StatefulSet represents a set of pods with consistent identities. Identities are defined as:
  #  - Network: A single stable DNS and hostname.
  #  - Storage: As many VolumeClaims as requested.
  # The StatefulSet guarantees that a given network identity will always map to the same storage identity.
  class Kubernetes::Apis::Apps::V1beta1::StatefulSet
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("apps/v1beta1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("apps/v1beta1"))]
    # The API and version we are accessing.
    getter api_version : String = "apps/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "StatefulSet"
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the desired identities of pods in this set.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec | Nil

    # Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec | Nil = nil, @status : Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus | Nil = nil)
    end
  end

  module Resources::Apps::V1beta1
    alias StatefulSet = ::Pyrite::Kubernetes::Apis::Apps::V1beta1::StatefulSet
  end
end
