# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Pod is a collection of containers that can run on a host.This resource is created by clients and scheduled onto hosts.
class Pyrite::V1_6_0::Kubernetes::Api::V1::Pod
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Specification of the desired behavior of the pod.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodSpec

  # Most recently observed status of the pod.This data may not be up to date.Populated by the system.Read-only.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodStatus

  YAML.mapping({
    api_version: {type: String, default: "Pod", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Pod", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "Pod"
    @kind = "v1"
  end

  # create a Pod
  def create
  end

  # list or watch objects of kind Pod
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of Pod
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified Pod
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified Pod
  def replace
  end

  # partially update the specified Pod
  def patch
  end

  # delete a Pod
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified Pod
  def self.read_status(name : String, namespace : String = "default")
  end

  # replace status of the specified Pod
  def replace_status
  end

  # partially update status of the specified Pod
  def patch_status
  end
end
