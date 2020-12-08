# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NamespaceStatus is information about the current status of a Namespace.
  class Api::Core::V1::NamespaceStatus
    # Represents the latest available observations of a namespace's current state.
    property conditions : Array(Api::Core::V1::NamespaceCondition) | Nil

    # Phase is the current lifecycle phase of the namespace. More info: [https://kubernetes.io/docs/tasks/administer-cluster/namespaces/](https://kubernetes.io/docs/tasks/administer-cluster/namespaces/)
    property phase : String | Nil

    ::YAML.mapping({
      conditions: {type: Array(Api::Core::V1::NamespaceCondition), nilable: true, key: "conditions", getter: false, setter: false},
      phase:      {type: String, nilable: true, key: "phase", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      conditions: {type: Array(Api::Core::V1::NamespaceCondition), nilable: true, key: "conditions", getter: false, setter: false},
      phase:      {type: String, nilable: true, key: "phase", getter: false, setter: false},
    }, true)

    def initialize(*, @conditions : Array | Nil = nil, @phase : String | Nil = nil)
    end
  end
end
