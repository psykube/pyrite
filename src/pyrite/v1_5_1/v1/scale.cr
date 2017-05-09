# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # Scale represents a scaling request for a resource.
  class Definitions::V1::Scale
    # Standard object metadata; More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata.)
    property metadata : V1::ObjectMeta

    # defines the behavior of the scale. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.)
    property spec : V1::ScaleSpec

    # current status of the scale. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status. Read-only.](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status. Read-only.)
    property status : V1::ScaleStatus

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1::ScaleSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1::ScaleStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1::ScaleSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1::ScaleStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V1::ScaleSpec = nil, @status : V1::ScaleStatus = nil)
    end
  end
end
