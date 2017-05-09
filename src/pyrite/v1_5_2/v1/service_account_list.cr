# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # ServiceAccountList is a list of ServiceAccount objects
  class Definitions::V1::ServiceAccountList
    # List of ServiceAccounts. More info: [http://releases.k8s.io/HEAD/docs/design/service_accounts.md#service-accounts](http://releases.k8s.io/HEAD/docs/design/service_accounts.md#service-accounts)
    property items : Array(V1::ServiceAccount)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "ServiceAccountList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(V1::ServiceAccount), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ServiceAccountList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(V1::ServiceAccount), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v1"
      @kind = "ServiceAccountList"
    end
  end

  module Resources::V1
    include Resource
    alias ServiceAccountList = Definitions::V1::ServiceAccountList
  end
end
