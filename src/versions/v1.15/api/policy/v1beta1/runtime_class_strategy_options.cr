# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RuntimeClassStrategyOptions define the strategy that will dictate the allowable RuntimeClasses for a pod.
  class Api::Policy::V1beta1::RuntimeClassStrategyOptions
    # allowedRuntimeClassNames is a whitelist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.
    property allowed_runtime_class_names : Array(String)

    # defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.
    property default_runtime_class_name : String | Nil

    ::YAML.mapping({
      allowed_runtime_class_names: {type: Array(String), nilable: false, key: "allowedRuntimeClassNames", getter: false, setter: false},
      default_runtime_class_name:  {type: String, nilable: true, key: "defaultRuntimeClassName", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      allowed_runtime_class_names: {type: Array(String), nilable: false, key: "allowedRuntimeClassNames", getter: false, setter: false},
      default_runtime_class_name:  {type: String, nilable: true, key: "defaultRuntimeClassName", getter: false, setter: false},
    }, true)

    def initialize(*, @allowed_runtime_class_names : Array, @default_runtime_class_name : String | Nil = nil)
    end
  end
end
