# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED - This group version of DaemonSet is deprecated by [apps/v1/DaemonSet. See the release notes for more information. DaemonSet represents the configuration of a daemon set.](apps/v1/DaemonSet. See the release notes for more information. DaemonSet represents the configuration of a daemon set.)
  class Api::Apps::V1beta2::DaemonSet
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "apps/v1beta2"

    # The resource kind withing the given apiVersion.
    getter kind : String = "DaemonSet"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # The desired behavior of this daemon set. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Apps::V1beta2::DaemonSetSpec | Nil

    # The current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Apps::V1beta2::DaemonSetStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Apps::V1beta2::DaemonSetSpec | Nil = nil, @status : Api::Apps::V1beta2::DaemonSetStatus | Nil = nil)
    end
  end

  module Resources::Apps::V1beta2
    alias DaemonSet = ::Pyrite::Api::Apps::V1beta2::DaemonSet
  end
end
