# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # PodTemplateSpec describes the data a pod should have when created from a template
  class Definitions::Kubernetes::Api::V1::PodTemplateSpec
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Specification of the desired behavior of the pod. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : Kubernetes::Api::V1::PodSpec

    YAML.mapping({metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: Kubernetes::Api::V1::PodSpec, nilable: true, key: spec, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: Kubernetes::Api::V1::PodSpec, nilable: true, key: spec, getter: false, setter: false}}, true)

    def initialize(@metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Api::V1::PodSpec = nil)
    end
  end
end
