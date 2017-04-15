require "yaml"
require "json"

# Eviction evicts a pod from its node subject to certain policies and safety constraints.This is a subresource of Pod. A request to cause such an eviction is created by POSTing to .../pods/<pod name>/evictions.
class K8S::V1_6_0::Kubernetes::Apis::Policy::V1beta1::Eviction
  # DeleteOptions may be provided
  property delete_options : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::DeleteOptions

  # ObjectMeta describes the pod that is being evicted.
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  YAML.mapping({
    api_version:    {type: String, default: "Eviction", key: apiVersion, getter: false, setter: false},
    kind:           {type: String, default: "v1beta1", getter: false, setter: false},
    delete_options: {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::DeleteOptions, nilable: true, key: deleteOptions, getter: false, setter: false},
    metadata:       {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version:    {type: String, default: "Eviction", key: apiVersion, getter: false, setter: false},
    kind:           {type: String, default: "v1beta1", getter: false, setter: false},
    delete_options: {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::DeleteOptions, nilable: true, key: deleteOptions, getter: false, setter: false},
    metadata:       {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@delete_options = nil, @metadata = nil)
    @api_version = "Eviction"
    @kind = "v1beta1"
  end

  # create eviction of an Eviction
  def self.create(name : String, delete_options = nil, metadata = nil, namespace : String = "default")
  end
end
