# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ReplicaSetList is a collection of ReplicaSets.
class Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetList
  # List of ReplicaSets.More info: http://kubernetes.io/docs/user-guide/replication-controller
  property items : Array(::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ReplicaSet)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ReplicaSetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ReplicaSet), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ReplicaSetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ReplicaSet), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ReplicaSetList"
    @kind = "v1beta1"
  end

  # create a ReplicaSet
  def create(metadata = nil, spec = nil, status = nil)
  end

  # list or watch objects of kind ReplicaSet
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of ReplicaSet
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # list or watch objects of kind ReplicaSet
  def self.list_for_all_namespaces(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end
end
