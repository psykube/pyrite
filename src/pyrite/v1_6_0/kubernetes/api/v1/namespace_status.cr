# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # NamespaceStatus is information about the current status of a Namespace.
  class Definitions::Kubernetes::Api::V1::NamespaceStatus
    # Phase is the current lifecycle phase of the namespace. More info: [http://releases.k8s.io/HEAD/docs/design/namespaces.md#phases](http://releases.k8s.io/HEAD/docs/design/namespaces.md#phases)
    property phase : String?

    YAML.mapping({phase: {type: String, nilable: true, key: phase, getter: false, setter: false}}, true)

    JSON.mapping({phase: {type: String, nilable: true, key: phase, getter: false, setter: false}}, true)

    def initialize(@phase : String? = nil)
    end
  end
end
