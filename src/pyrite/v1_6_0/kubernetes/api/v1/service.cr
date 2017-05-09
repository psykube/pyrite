# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # Service is a named abstraction of software service (for example, mysql) consisting of local port (for example 3306) that the proxy listens on, and the selector that determines which pods will answer requests sent through the proxy.
  class Definitions::Kubernetes::Api::V1::Service
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Spec defines the behavior of a service. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Api::V1::ServiceSpec

    # Most recently observed status of the service. Populated by the system. Read-only. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Api::V1::ServiceStatus

    YAML.mapping({
      api_version: {type: String, default: "Service", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::ServiceSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::ServiceStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "Service", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::ServiceSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::ServiceStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Api::V1::ServiceSpec = nil, @status : Kubernetes::Api::V1::ServiceStatus = nil)
      @api_version = "v1"
      @kind = "Service"
    end
  end

  module Resources::V1
    include Resource
    alias Service = Definitions::Kubernetes::Api::V1::Service
  end
end
