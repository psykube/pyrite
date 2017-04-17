# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# StatefulSetList is a collection of StatefulSets.
class Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSetList
  property items : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSet)

  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "StatefulSetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSet), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "StatefulSetList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Apps::V1beta1::StatefulSet), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "StatefulSetList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind StatefulSet
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # create a StatefulSet
  def self.create(pretty : String?, metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # delete collection of StatefulSet
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # list or watch objects of kind StatefulSet
  def self.get(field_selector : String?, label_selector : String?, pretty : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end
end
