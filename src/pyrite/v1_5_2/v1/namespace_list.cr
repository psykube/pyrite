# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # NamespaceList is a list of Namespaces.
  class Definitions::V1::NamespaceList
    # Items is the list of Namespace objects in the list. More info: [http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces)
    property items : Array(V1::Namespace)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "NamespaceList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(V1::Namespace), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "NamespaceList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(V1::Namespace), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v1"
      @kind = "NamespaceList"
    end
  end

  module Resources::V1
    include Resource
    alias NamespaceList = Definitions::V1::NamespaceList
  end
end
