# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically manages the replica count of any resource implementing the scale subresource based on the metrics specified.
  class Definitions::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscaler
    # metadata is the standard object metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # spec is the specification for the behaviour of the autoscaler. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.)
    property spec : Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec

    # status is the current information about the autoscaler.
    property status : Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus

    YAML.mapping({
      api_version: {type: String, default: "HorizontalPodAutoscaler", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "HorizontalPodAutoscaler", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec = nil, @status : Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus = nil)
      @api_version = "autoscaling/v2alpha1"
      @kind = "HorizontalPodAutoscaler"
    end
  end

  module Resources::Autoscaling::V2alpha1
    include Resource
    alias HorizontalPodAutoscaler = Definitions::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscaler
  end
end
