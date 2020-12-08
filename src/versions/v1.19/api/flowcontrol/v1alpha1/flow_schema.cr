# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FlowSchema defines the schema of a group of flows. Note that a flow is made up of a set of inbound API requests with similar attributes and is identified by a pair of strings: the name of the FlowSchema and a "flow distinguisher".
  class Api::Flowcontrol::V1alpha1::FlowSchema
    getter api_version : String = "flowcontrol/v1alpha1"
    getter kind : String = "FlowSchema"
    # `metadata` is the standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # `spec` is the specification of the desired behavior of a FlowSchema. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    property spec : Api::Flowcontrol::V1alpha1::FlowSchemaSpec | Nil

    # `status` is the current status of a FlowSchema. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    property status : Api::Flowcontrol::V1alpha1::FlowSchemaStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "flowcontrol/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "FlowSchema", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Flowcontrol::V1alpha1::FlowSchemaSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Flowcontrol::V1alpha1::FlowSchemaStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "flowcontrol/v1alpha1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "FlowSchema", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Flowcontrol::V1alpha1::FlowSchemaSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Api::Flowcontrol::V1alpha1::FlowSchemaStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Flowcontrol::V1alpha1::FlowSchemaSpec | Nil = nil, @status : Api::Flowcontrol::V1alpha1::FlowSchemaStatus | Nil = nil)
    end

    # create a FlowSchema
    def create_flowcontrol_apiserver_v1alpha1_flow_schema(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # list or watch objects of kind FlowSchema
    def self.list_flowcontrol_apiserver_v1alpha1_flow_schema(context : String | Nil = nil, allow_watch_bookmarks : Bool | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of FlowSchema
    def self.delete_flowcontrol_apiserver_v1alpha1_flow_schema(context : String | Nil = nil, continue : String | Nil = nil, dry_run : String | Nil = nil, field_selector : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil, resource_version : String | Nil = nil, resource_version_match : String | Nil = nil, timeout_seconds : Int32 | Nil = nil)
    end

    # read the specified FlowSchema
    def self.read_flowcontrol_apiserver_v1alpha1_flow_schema(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified FlowSchema
    def replace_flowcontrol_apiserver_v1alpha1_flow_schema(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update the specified FlowSchema
    def patch_flowcontrol_apiserver_v1alpha1_flow_schema(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end

    # delete a FlowSchema
    def delete_flowcontrol_apiserver_v1alpha1_flow_schema(context : String | Nil = nil, dry_run : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, orphan_dependents : Bool | Nil = nil, propagation_policy : String | Nil = nil)
    end

    # read status of the specified FlowSchema
    def self.read_flowcontrol_apiserver_v1alpha1_flow_schema_status(name : String, context : String | Nil = nil)
    end

    # replace status of the specified FlowSchema
    def replace_flowcontrol_apiserver_v1alpha1_flow_schema_status(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil)
    end

    # partially update status of the specified FlowSchema
    def patch_flowcontrol_apiserver_v1alpha1_flow_schema_status(context : String | Nil = nil, dry_run : String | Nil = nil, field_manager : String | Nil = nil, force : Bool | Nil = nil)
    end
  end

  module Resources::Flowcontrol::V1alpha1
    alias FlowSchema = ::Pyrite::Api::Flowcontrol::V1alpha1::FlowSchema
  end
end
