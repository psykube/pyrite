require "yaml"
require "json"

# SecretList is a list of Secret.
class K8S::V1_6_1::Kubernetes::Api::V1::SecretList
  # Items is a list of secret objects.More info: http://kubernetes.io/docs/user-guide/secrets
  property items : Array(::K8S::V1_6_1::Kubernetes::Api::V1::Secret)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "SecretList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::Secret), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "SecretList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::Secret), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "SecretList"
    @kind = "v1"
  end

  # list or watch objects of kind Secret
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a Secret
  def self.create(data = nil, metadata = nil, string_data = nil, type = nil, namespace : String = "default")
  end

  # list or watch objects of kind Secret
  def self.get
    Kubernetes.client.get
  end
end
