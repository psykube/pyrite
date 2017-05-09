# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # configuration of a horizontal pod autoscaler.
  class Definitions::V1beta1::HorizontalPodAutoscaler
    # Standard object metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # behaviour of autoscaler. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.)
    property spec : V1beta1::HorizontalPodAutoscalerSpec

    # current information about the autoscaler.
    property status : V1beta1::HorizontalPodAutoscalerStatus

    YAML.mapping({
      api_version: {type: String, default: "HorizontalPodAutoscaler", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::HorizontalPodAutoscalerSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::HorizontalPodAutoscalerStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "HorizontalPodAutoscaler", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::HorizontalPodAutoscalerSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::HorizontalPodAutoscalerStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1beta1::HorizontalPodAutoscalerSpec = nil, @status : V1beta1::HorizontalPodAutoscalerStatus = nil)
      @api_version = "v1beta1"
      @kind = "HorizontalPodAutoscaler"
    end
  end

  module Resources::V1beta1
    include Resource
    alias HorizontalPodAutoscaler = Definitions::V1beta1::HorizontalPodAutoscaler
  end
end
