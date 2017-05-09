# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # Pod is a collection of containers that can run on a host. This resource is created by clients and scheduled onto hosts.
  class Definitions::Kubernetes::Api::V1::Pod
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Specification of the desired behavior of the pod. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Api::V1::PodSpec

    # Most recently observed status of the pod. This data may not be up to date. Populated by the system. Read-only. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Api::V1::PodStatus

    YAML.mapping({
      api_version: {type: String, default: "Pod", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::PodSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::PodStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Pod", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::PodSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::PodStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Api::V1::PodSpec = nil, @status : Kubernetes::Api::V1::PodStatus = nil)
      @api_version = "v1"
      @kind = "Pod"
    end
  end

  module Resources::V1
    include Resource
    alias Pod = Definitions::Kubernetes::Api::V1::Pod
  end
end
