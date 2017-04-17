# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Binding ties one object to another.For example, a pod is bound to a node by a scheduler.
class Pyrite::V1_6_0::Kubernetes::Api::V1::Binding
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # The target object that you want to bind to the standard object.
  property target : ::Pyrite::V1_6_0::Kubernetes::Api::V1::ObjectReference

  YAML.mapping({
    api_version: {type: String, default: "Binding", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    target:      {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ObjectReference, nilable: false, key: target, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Binding", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    target:      {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ObjectReference, nilable: false, key: target, getter: false, setter: false},
  }, true)

  def initialize(@target, @metadata = nil)
    @api_version = "Binding"
    @kind = "v1"
  end

  # create a Binding
  def create
  end

  # create binding of a Binding
  def create_binding
  end
end
