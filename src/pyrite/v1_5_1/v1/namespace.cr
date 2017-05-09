# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # Namespace provides a scope for Names. Use of multiple namespaces is optional.
  class Definitions::V1::Namespace
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec defines the behavior of the Namespace. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : V1::NamespaceSpec

    # Status describes the current status of a Namespace. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : V1::NamespaceStatus

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1::NamespaceSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1::NamespaceStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1::NamespaceSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1::NamespaceStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V1::NamespaceSpec = nil, @status : V1::NamespaceStatus = nil)
    end
  end
end
