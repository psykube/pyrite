# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# SecretList is a list of Secret.
class Pyrite::V1_6_0::Kubernetes::Api::V1::SecretList
  # Items is a list of secret objects.More info: http://kubernetes.io/docs/user-guide/secrets
  property items : Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::Secret)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "SecretList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::Secret), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "SecretList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::Secret), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "SecretList"
    @kind = "v1"
  end

  # create a Secret
  def create(data = nil, metadata = nil, string_data = nil, type = nil)
  end

  # list or watch objects of kind Secret
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of Secret
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # list or watch objects of kind Secret
  def self.list_for_all_namespaces(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end
end
