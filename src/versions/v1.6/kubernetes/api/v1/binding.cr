# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Binding ties one object to another. For example, a pod is bound to a node by a scheduler.
  class Kubernetes::Api::V1::Binding
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("v1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("v1"))]
    # The API and version we are accessing.
    getter api_version : String = "v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "Binding"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # The target object that you want to bind to the standard object.
    @[::JSON::Field(key: "target")]
    @[::YAML::Field(key: "target")]
    property target : Kubernetes::Api::V1::ObjectReference

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @target : Kubernetes::Api::V1::ObjectReference)
    end
  end

  module Resources::V1
    alias Binding = ::Pyrite::Kubernetes::Api::V1::Binding
  end
end
