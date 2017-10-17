# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ComponentStatus (and ComponentStatusList) holds the cluster validation info.
  class Api::Core::V1::ComponentStatus
    getter api_version : String = "io/k8s/api/core/v1"
    getter kind : String = "ComponentStatus"
    # List of component conditions observed
    property conditions : Array(Api::Core::V1::ComponentCondition) | Nil

    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    YAML.mapping({
      api_version: {type: String, default: "io/k8s/api/core/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ComponentStatus", key: "kind", setter: false},
      conditions:  {type: Array(Api::Core::V1::ComponentCondition), nilable: true, key: "conditions", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "io/k8s/api/core/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "ComponentStatus", key: "kind", setter: false},
      conditions:  {type: Array(Api::Core::V1::ComponentCondition), nilable: true, key: "conditions", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
    }, true)

    def initialize(*, @conditions : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end

  module Resources::Io::K8s::Api::Core::V1
    alias ComponentStatus = Api::Core::V1::ComponentStatus
  end
end
