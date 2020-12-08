# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Service is a named abstraction of software service (for example, mysql) consisting of local port (for example 3306) that the proxy listens on, and the selector that determines which pods will answer requests sent through the proxy.
  class Kubernetes::Api::V1::Service
    getter api_version : String = "v1"
    getter kind : String = "Service"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines the behavior of a service. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Api::V1::ServiceSpec | Nil

    # Most recently observed status of the service. Populated by the system. Read-only. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : Kubernetes::Api::V1::ServiceStatus | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Service", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::ServiceSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::ServiceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Service", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::ServiceSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::ServiceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Api::V1::ServiceSpec | Nil = nil, @status : Kubernetes::Api::V1::ServiceStatus | Nil = nil)
    end

    # create a Service
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind Service
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified Service
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified Service
    def replace(context : String | Nil = nil)
    end

    # partially update the specified Service
    def patch(context : String | Nil = nil)
    end

    # delete a Service
    def delete(context : String | Nil = nil)
    end

    # read status of the specified Service
    def self.read_status(name : String, context : String | Nil = nil, namespace : String = "default")
    end

    # replace status of the specified Service
    def replace_status(context : String | Nil = nil)
    end

    # partially update status of the specified Service
    def patch_status(context : String | Nil = nil)
    end
  end

  module Resources::V1
    alias Service = ::Pyrite::Kubernetes::Api::V1::Service
  end
end
