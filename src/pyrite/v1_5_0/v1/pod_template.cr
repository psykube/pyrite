# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # PodTemplate describes a template for creating copies of a predefined pod.
  class Definitions::V1::PodTemplate
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Template defines the pods that will be created from this pod template. [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property template : V1::PodTemplateSpec

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  template: {type: V1::PodTemplateSpec, nilable: true, key: template, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  template: {type: V1::PodTemplateSpec, nilable: true, key: template, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @template : V1::PodTemplateSpec = nil)
    end
  end
end
