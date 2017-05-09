# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # DaemonSet represents the configuration of a daemon set.
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::DaemonSet
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # The desired behavior of this daemon set. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec

    # The current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus

    YAML.mapping({
      api_version: {type: String, default: "DaemonSet", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "DaemonSet", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec = nil, @status : Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus = nil)
      @api_version = "extensions/v1beta1"
      @kind = "DaemonSet"
    end
  end

  module Resources::Extensions::V1beta1
    include Resource
    alias DaemonSet = Definitions::Kubernetes::Apis::Extensions::V1beta1::DaemonSet
  end
end
