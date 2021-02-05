# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RuntimeClassStrategyOptions define the strategy that will dictate the allowable RuntimeClasses for a pod.
  class Api::Policy::V1beta1::RuntimeClassStrategyOptions
    include ::JSON::Serializable
    include ::YAML::Serializable

    # allowedRuntimeClassNames is a whitelist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.
    @[JSON::Field(key: "allowedRuntimeClassNames")]
    @[YAML::Field(key: "allowedRuntimeClassNames")]
    property allowed_runtime_class_names : Array(String)

    # defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.
    @[JSON::Field(key: "defaultRuntimeClassName")]
    @[YAML::Field(key: "defaultRuntimeClassName")]
    property default_runtime_class_name : String | Nil

    def initialize(*, @allowed_runtime_class_names : Array, @default_runtime_class_name : String | Nil = nil)
    end
  end
end
