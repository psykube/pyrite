# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# DaemonSet represents the configuration of a daemon set.
class Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::DaemonSet
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # The desired behavior of this daemon set.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec

  # The current status of this daemon set.This data may be out of date by some window of time.Populated by the system.Read-only.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus

  YAML.mapping({
    api_version: {type: String, default: "DaemonSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "DaemonSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "DaemonSet"
    @kind = "v1beta1"
  end

  # create a DaemonSet
  def create
  end

  # list or watch objects of kind DaemonSet
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of DaemonSet
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified DaemonSet
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified DaemonSet
  def replace
  end

  # partially update the specified DaemonSet
  def patch
  end

  # delete a DaemonSet
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified DaemonSet
  def self.read_status(name : String, namespace : String = "default")
  end

  # replace status of the specified DaemonSet
  def replace_status
  end

  # partially update status of the specified DaemonSet
  def patch_status
  end
end
