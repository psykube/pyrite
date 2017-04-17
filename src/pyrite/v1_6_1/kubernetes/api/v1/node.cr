# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Node is a worker node in Kubernetes.Each node will have a unique identifier in the cache (i.e.in etcd).
class Pyrite::V1_6_1::Kubernetes::Api::V1::Node
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the behavior of a node.http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeSpec

  # Most recently observed status of the node.Populated by the system.Read-only.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeStatus

  YAML.mapping({
    api_version: {type: String, default: "Node", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Node", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::NodeStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "Node"
    @kind = "v1"
  end

  # create a Node
  def create
  end

  # list or watch objects of kind Node
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # delete collection of Node
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # read the specified Node
  def self.read(exact : Bool?, export : Bool?, name : String)
  end

  # replace the specified Node
  def replace
  end

  # partially update the specified Node
  def patch
  end

  # delete a Node
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified Node
  def self.read_status(name : String)
  end

  # replace status of the specified Node
  def replace_status
  end

  # partially update status of the specified Node
  def patch_status
  end
end
