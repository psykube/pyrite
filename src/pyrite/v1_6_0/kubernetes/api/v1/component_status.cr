# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ComponentStatus (and ComponentStatusList) holds the cluster validation info.
class Pyrite::V1_6_0::Kubernetes::Api::V1::ComponentStatus
  # List of component conditions observed
  property conditions : Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::ComponentCondition)?

  # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  YAML.mapping({
    api_version: {type: String, default: "ComponentStatus", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    conditions:  {type: Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::ComponentCondition), nilable: true, key: conditions, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ComponentStatus", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    conditions:  {type: Array(::Pyrite::V1_6_0::Kubernetes::Api::V1::ComponentCondition), nilable: true, key: conditions, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @conditions : Array? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta = nil)
    @api_version = "ComponentStatus"
    @kind = "v1"
  end

  # read the specified ComponentStatus
  def self.read(name : String, context : String? = nil)
  end
end
