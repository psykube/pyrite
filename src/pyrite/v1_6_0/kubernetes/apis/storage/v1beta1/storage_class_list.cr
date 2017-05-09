# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # StorageClassList is a collection of storage classes.
  class Definitions::Kubernetes::Apis::Storage::V1beta1::StorageClassList
    # Items is the list of StorageClasses
    property items : Array(Kubernetes::Apis::Storage::V1beta1::StorageClass)

    # Standard list metadata More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "StorageClassList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Storage::V1beta1::StorageClass), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "StorageClassList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Storage::V1beta1::StorageClass), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "storage/v1beta1"
      @kind = "StorageClassList"
    end
  end

  module Resources::Storage::V1beta1
    include Resource
    alias StorageClassList = Definitions::Kubernetes::Apis::Storage::V1beta1::StorageClassList
  end
end
