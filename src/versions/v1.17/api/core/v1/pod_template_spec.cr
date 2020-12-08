# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodTemplateSpec describes the data a pod should have when created from a template
  class Api::Core::V1::PodTemplateSpec
    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the desired behavior of the pod. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status)
    property spec : Api::Core::V1::PodSpec | Nil

    ::YAML.mapping({
      metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:     {type: Api::Core::V1::PodSpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:     {type: Api::Core::V1::PodSpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Core::V1::PodSpec | Nil = nil)
    end
  end
end
