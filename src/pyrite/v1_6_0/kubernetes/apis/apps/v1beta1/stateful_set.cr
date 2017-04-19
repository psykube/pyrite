# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# StatefulSet represents a set of pods with consistent identities. Identities are defined as:
#  - Network: A single stable DNS and hostname.
#  - Storage: As many VolumeClaims as requested.
# The StatefulSet guarantees that a given network identity will always map to the same storage identity.
class Pyrite::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSet
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the desired identities of pods in this set.
  property spec : ::Pyrite::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec

  # Status is the current status of Pods in this StatefulSet. This data may be out of date by some window of time.
  property status : ::Pyrite::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus

  YAML.mapping({
    api_version: {type: String, default: "StatefulSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "StatefulSet", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec = nil, @status : ::Pyrite::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus = nil)
    @api_version = "StatefulSet"
    @kind = "v1beta1"
  end

  # create a StatefulSet
  def create(context : String? = nil)
  end

  # list or watch objects of kind StatefulSet
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of StatefulSet
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # read the specified StatefulSet
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil, namespace : String = "default")
  end

  # replace the specified StatefulSet
  def replace(context : String? = nil)
  end

  # partially update the specified StatefulSet
  def patch(context : String? = nil)
  end

  # delete a StatefulSet
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end

  # read status of the specified StatefulSet
  def self.read_status(name : String, context : String? = nil, namespace : String = "default")
  end

  # replace status of the specified StatefulSet
  def replace_status(context : String? = nil)
  end

  # partially update status of the specified StatefulSet
  def patch_status(context : String? = nil)
  end
end
