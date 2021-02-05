# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FlowSchema defines the schema of a group of flows. Note that a flow is made up of a set of inbound API requests with similar attributes and is identified by a pair of strings: the name of the FlowSchema and a "flow distinguisher".
  class Api::Flowcontrol::V1beta1::FlowSchema
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "flowcontrol/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "FlowSchema"
    # `metadata` is the standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    @[JSON::Field(key: "metadata")]
    @[YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # `spec` is the specification of the desired behavior of a FlowSchema. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[JSON::Field(key: "spec")]
    @[YAML::Field(key: "spec")]
    property spec : Api::Flowcontrol::V1beta1::FlowSchemaSpec | Nil

    # `status` is the current status of a FlowSchema. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    @[JSON::Field(key: "status")]
    @[YAML::Field(key: "status")]
    property status : Api::Flowcontrol::V1beta1::FlowSchemaStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Flowcontrol::V1beta1::FlowSchemaSpec | Nil = nil, @status : Api::Flowcontrol::V1beta1::FlowSchemaStatus | Nil = nil)
    end
  end

  module Resources::Flowcontrol::V1beta1
    alias FlowSchema = ::Pyrite::Api::Flowcontrol::V1beta1::FlowSchema
  end
end
