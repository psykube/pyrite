require "yaml"
require "json"

# A ThirdPartyResource is a generic representation of a resource, it is used by add-ons and plugins to add new resource types to the API. It consists of one or more Versions of the api.
class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource
  # Description is the description of this object.
  property description : String?

  # Standard object metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Versions are versions for this third party object
  property versions : Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::APIVersion)?

  YAML.mapping({
    api_version: {type: String, default: "ThirdPartyResource", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    description: {type: String, nilable: true, key: description, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    versions:    {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: versions, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ThirdPartyResource", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    description: {type: String, nilable: true, key: description, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    versions:    {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::APIVersion), nilable: true, key: versions, getter: false, setter: false},
  }, true)

  def initialize(@description = nil, @metadata = nil, @versions = nil)
    @api_version = "ThirdPartyResource"
    @kind = "v1beta1"
  end

  # list or watch objects of kind ThirdPartyResource
  def self.get
    Kubernetes.client.get
  end

  # create a ThirdPartyResource
  def self.create(description = nil, metadata = nil, versions = nil)
  end

  # read the specified ThirdPartyResource
  def self.get(name : String)
    Kubernetes.client.get
  end
end
