# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodTemplateList is a list of PodTemplates.
  class Kubernetes::Api::V1::PodTemplateList
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "List"
    # List of pod templates
    @[::JSON::Field(key: "items")]
    @[::YAML::Field(key: "items")]
    property items : Array(Kubernetes::Api::V1::PodTemplate)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    def initialize(*, @items : Array, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end
  end
end
