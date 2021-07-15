# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ResourceQuotaStatus defines the enforced hard limits and observed use.
  class Api::Core::V1::ResourceQuotaStatus < Kubernetes::Spec
    # Hard is the set of enforced hard limits for each named resource. More info: [https://git.k8s.io/community/contributors/design-proposals/admission_control_resource_quota.md](https://git.k8s.io/community/contributors/design-proposals/admission_control_resource_quota.md)
    @[::JSON::Field(key: "hard")]
    @[::YAML::Field(key: "hard")]
    property hard : Hash(String, String) | Nil

    # Used is the current observed total usage of the resource in the namespace.
    @[::JSON::Field(key: "used")]
    @[::YAML::Field(key: "used")]
    property used : Hash(String, String) | Nil

    def initialize(*, @hard : Hash(String, String) | Nil = nil, @used : Hash(String, String) | Nil = nil)
    end
  end
end
