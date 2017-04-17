# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# NodeList is the whole list of all Nodes which have been registered with master.
class Pyrite::V1_6_1::Kubernetes::Api::V1::NodeList
  # List of nodes
  property items : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Node)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "NodeList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Node), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "NodeList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Node), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "NodeList"
    @kind = "v1"
  end

  # create a Node
  def create(metadata = nil, spec = nil, status = nil)
  end

  # list or watch objects of kind Node
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # delete collection of Node
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end
end
