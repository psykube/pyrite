require "yaml"
require "json"

# Status of all the conditions for the component as a list of ComponentStatus objects.
class K8S::V1_6_1::Kubernetes::Api::V1::ComponentStatusList
  # List of ComponentStatus objects.
  property items : Array(::K8S::V1_6_1::Kubernetes::Api::V1::ComponentStatus)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ComponentStatusList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ComponentStatus), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ComponentStatusList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ComponentStatus), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ComponentStatusList"
    @kind = "v1"
  end

  # list objects of kind ComponentStatus
  def self.get
    Kubernetes.client.get
  end
end
