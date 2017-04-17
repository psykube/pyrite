# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Service is a named abstraction of software service (for example, mysql) consisting of local port (for example 3306) that the proxy listens on, and the selector that determines which pods will answer requests sent through the proxy.
class Pyrite::V1_6_1::Kubernetes::Api::V1::Service
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the behavior of a service.http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ServiceSpec

  # Most recently observed status of the service.Populated by the system.Read-only.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ServiceStatus

  YAML.mapping({
    api_version: {type: String, default: "Service", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ServiceSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ServiceStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Service", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ServiceSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ServiceStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "Service"
    @kind = "v1"
  end

  # create a Service
  def create
  end

  # list or watch objects of kind Service
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified Service
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified Service
  def replace
  end

  # partially update the specified Service
  def patch
  end

  # delete a Service
  def delete
  end

  # read status of the specified Service
  def self.read_status(name : String, namespace : String = "default")
  end

  # replace status of the specified Service
  def replace_status
  end

  # partially update status of the specified Service
  def patch_status
  end
end
