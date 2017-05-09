# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # JobList is a collection of jobs.
  class Definitions::Kubernetes::Apis::Batch::V1::JobList
    # Items is the list of Job.
    property items : Array(Kubernetes::Apis::Batch::V1::Job)

    # Standard list metadata More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "JobList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Batch::V1::Job), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "JobList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Batch::V1::Job), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "batch/v1"
      @kind = "JobList"
    end
  end

  module Resources::Batch::V1
    include Resource
    alias JobList = Definitions::Kubernetes::Apis::Batch::V1::JobList
  end
end
