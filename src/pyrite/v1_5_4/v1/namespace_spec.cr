# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # NamespaceSpec describes the attributes on a Namespace.
  class Definitions::V1::NamespaceSpec
    # Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: [http://releases.k8s.io/HEAD/docs/design/namespaces.md#finalizers](http://releases.k8s.io/HEAD/docs/design/namespaces.md#finalizers)
    property finalizers : Array(String)?

    YAML.mapping({finalizers: {type: Array(String), nilable: true, key: finalizers, getter: false, setter: false}}, true)

    JSON.mapping({finalizers: {type: Array(String), nilable: true, key: finalizers, getter: false, setter: false}}, true)

    def initialize(@finalizers : Array? = nil)
    end
  end
end
