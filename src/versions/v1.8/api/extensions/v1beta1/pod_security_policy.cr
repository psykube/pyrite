# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Pod Security Policy governs the ability to make requests that affect the Security Context that will be applied to a pod and container.
  class Api::Extensions::V1beta1::PodSecurityPolicy
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("extensions/v1beta1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("extensions/v1beta1"))]
    # The API and version we are accessing.
    getter api_version : String = "extensions/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "PodSecurityPolicy"
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # spec defines the policy enforced.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Extensions::V1beta1::PodSecurityPolicySpec | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Extensions::V1beta1::PodSecurityPolicySpec | Nil = nil)
    end
  end

  module Resources::Extensions::V1beta1
    alias PodSecurityPolicy = ::Pyrite::Api::Extensions::V1beta1::PodSecurityPolicy
  end
end
