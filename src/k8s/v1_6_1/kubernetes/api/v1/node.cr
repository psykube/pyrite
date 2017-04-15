require "yaml"
require "json"

# Node is a worker node in Kubernetes.Each node will have a unique identifier in the cache (i.e.in etcd).
class K8S::V1_6_1::Kubernetes::Api::V1::Node
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec defines the behavior of a node.http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_1::Kubernetes::Api::V1::NodeSpec

  # Most recently observed status of the node.Populated by the system.Read-only.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::K8S::V1_6_1::Kubernetes::Api::V1::NodeStatus

  YAML.mapping({
    api_version: {type: String, default: "Node", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::NodeSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Api::V1::NodeStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Node", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Api::V1::NodeSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Api::V1::NodeStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "Node"
    @kind = "v1"
  end

  # list or watch objects of kind Node
  def self.get
    Kubernetes.client.get
  end

  # create a Node
  def self.create(metadata = nil, spec = nil, status = nil)
  end

  # read the specified Node
  def self.get(name : String)
    Kubernetes.client.get
  end

  # read status of the specified Node
  def self.get(name : String)
    Kubernetes.client.get
  end
end
