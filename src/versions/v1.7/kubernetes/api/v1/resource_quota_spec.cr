# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
  class Kubernetes::Api::V1::ResourceQuotaSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Hard is the set of desired hard limits for each named resource. More info: [https://git.k8s.io/community/contributors/design-proposals/admission_control_resource_quota.md](https://git.k8s.io/community/contributors/design-proposals/admission_control_resource_quota.md)
    @[::JSON::Field(key: "hard")]
    @[::YAML::Field(key: "hard")]
    property hard : Hash(String, String) | Nil

    # A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
    @[::JSON::Field(key: "scopes")]
    @[::YAML::Field(key: "scopes")]
    property scopes : Array(String) | Nil

    def initialize(*, @hard : Hash(String, String) | Nil = nil, @scopes : Array | Nil = nil)
    end
  end
end
