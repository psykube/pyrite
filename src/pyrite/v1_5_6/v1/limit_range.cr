# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_6
  # LimitRange sets resource usage limits for each kind of resource in a Namespace.
  class Definitions::V1::LimitRange
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec defines the limits enforced. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : V1::LimitRangeSpec

    YAML.mapping({
      api_version: {type: String, default: "LimitRange", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1::LimitRangeSpec, nilable: true, key: spec, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "LimitRange", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1::LimitRangeSpec, nilable: true, key: spec, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1::LimitRangeSpec = nil)
      @api_version = "v1"
      @kind = "LimitRange"
    end
  end

  module Resources::V1
    include Resource
    alias LimitRange = Definitions::V1::LimitRange
  end
end
