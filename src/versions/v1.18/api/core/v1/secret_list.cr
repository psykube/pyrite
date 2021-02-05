# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SecretList is a list of Secret.
  class Api::Core::V1::SecretList
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("v1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("v1"))]
    # The API and version we are accessing.
    getter api_version : String = "v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "List"
    # Items is a list of secret objects. More info: [https://kubernetes.io/docs/concepts/configuration/secret](https://kubernetes.io/docs/concepts/configuration/secret)
    @[::JSON::Field(key: "items")]
    @[::YAML::Field(key: "items")]
    property items : Array(Api::Core::V1::Secret)

    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end