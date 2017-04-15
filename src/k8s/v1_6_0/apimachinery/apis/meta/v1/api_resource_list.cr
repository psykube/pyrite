require "yaml"
require "json"

# APIResourceList is a list of APIResource, it is used to expose the name of the resources supported in a specific group and version, and if the resource is namespaced.
class K8S::V1_6_0::Apimachinery::Apis::Meta::V1::APIResourceList
  # groupVersion is the group and version this APIResourceList is for.
  property group_version : String

  # resources contains the name of the resources and if they are namespaced.
  property resources : Array(::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::APIResource)

  YAML.mapping({
    api_version:   {type: String, default: "APIResourceList", key: apiVersion, getter: false, setter: false},
    kind:          {type: String, default: "v1", getter: false, setter: false},
    group_version: {type: String, nilable: false, key: groupVersion, getter: false, setter: false},
    resources:     {type: Array(::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::APIResource), nilable: false, key: resources, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version:   {type: String, default: "APIResourceList", key: apiVersion, getter: false, setter: false},
    kind:          {type: String, default: "v1", getter: false, setter: false},
    group_version: {type: String, nilable: false, key: groupVersion, getter: false, setter: false},
    resources:     {type: Array(::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::APIResource), nilable: false, key: resources, getter: false, setter: false},
  }, true)

  def initialize(@group_version, @resources)
    @api_version = "APIResourceList"
    @kind = "v1"
  end
end
