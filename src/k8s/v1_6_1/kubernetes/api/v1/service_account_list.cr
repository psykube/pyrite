require "yaml"
require "json"

# ServiceAccountList is a list of ServiceAccount objects
class K8S::V1_6_1::Kubernetes::Api::V1::ServiceAccountList
  # List of ServiceAccounts.More info: http://releases.k8s.io/HEAD/docs/design/service_accounts.md#service-accounts
  property items : Array(::K8S::V1_6_1::Kubernetes::Api::V1::ServiceAccount)

  # Standard list metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "ServiceAccountList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ServiceAccount), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "ServiceAccountList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_1::Kubernetes::Api::V1::ServiceAccount), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "ServiceAccountList"
    @kind = "v1"
  end

  # list or watch objects of kind ServiceAccount
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a ServiceAccount
  def self.create(automount_service_account_token = nil, image_pull_secrets = nil, metadata = nil, secrets = nil, namespace : String = "default")
  end

  # list or watch objects of kind ServiceAccount
  def self.get
    Kubernetes.client.get
  end
end
