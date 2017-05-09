# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # Ingress is a collection of rules that allow inbound connections to reach the endpoints defined by a backend. An Ingress can be configured to give services externally-reachable urls, load balance traffic, terminate SSL, offer name based virtual hosting etc.
  class Definitions::V1beta1::Ingress
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec is the desired state of the Ingress. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : V1beta1::IngressSpec

    # Status is the current state of the Ingress. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : V1beta1::IngressStatus

    YAML.mapping({
      api_version: {type: String, default: "Ingress", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::IngressSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::IngressStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Ingress", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1beta1::IngressSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1beta1::IngressStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1beta1::IngressSpec = nil, @status : V1beta1::IngressStatus = nil)
      @api_version = "v1beta1"
      @kind = "Ingress"
    end
  end

  module Resources::V1beta1
    include Resource
    alias Ingress = Definitions::V1beta1::Ingress
  end
end
