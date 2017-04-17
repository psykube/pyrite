# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodTemplateSpec describes the data a pod should have when created from a template
class Pyrite::V1_6_0::Kubernetes::Api::V1::PodTemplateSpec
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Specification of the desired behavior of the pod.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodSpec

  YAML.mapping({metadata: {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                spec:     {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodSpec, nilable: true, key: spec, getter: false, setter: false}}, true)

  JSON.mapping({metadata: {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                spec:     {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PodSpec, nilable: true, key: spec, getter: false, setter: false}}, true)

  def initialize(@metadata = nil, @spec = nil)
  end
end
