# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # ComponentStatus (and ComponentStatusList) holds the cluster validation info.
  class Definitions::V1::ComponentStatus
    # List of component conditions observed
    property conditions : Array(V1::ComponentCondition)?

    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    YAML.mapping({
      api_version: {type: String, default: "ComponentStatus", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      conditions:  {type: Array(V1::ComponentCondition), nilable: true, key: conditions, getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ComponentStatus", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      conditions:  {type: Array(V1::ComponentCondition), nilable: true, key: conditions, getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @conditions : Array? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil)
      @api_version = "v1"
      @kind = "ComponentStatus"
    end
  end

  module Resources::V1
    include Resource
    alias ComponentStatus = Definitions::V1::ComponentStatus
  end
end
