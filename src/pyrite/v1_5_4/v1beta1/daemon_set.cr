# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # DaemonSet represents the configuration of a daemon set.
  class Definitions::V1beta1::DaemonSet
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec defines the desired behavior of this daemon set. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : V1beta1::DaemonSetSpec

    # Status is the current status of this daemon set. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : V1beta1::DaemonSetStatus

    YAML.mapping({
      api_version: {type: String, default: "DaemonSet", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::DaemonSetSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::DaemonSetStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "DaemonSet", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::DaemonSetSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::DaemonSetStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1beta1::DaemonSetSpec = nil, @status : V1beta1::DaemonSetStatus = nil)
      @api_version = "v1beta1"
      @kind = "DaemonSet"
    end
  end

  module Resources::V1beta1
    include Resource
    alias DaemonSet = Definitions::V1beta1::DaemonSet
  end
end
