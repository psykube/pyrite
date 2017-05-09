# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # CronJobList is a collection of cron jobs.
  class Definitions::Kubernetes::Apis::Batch::V2alpha1::CronJobList
    # Items is the list of CronJob.
    property items : Array(Kubernetes::Apis::Batch::V2alpha1::CronJob)

    # Standard list metadata More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "CronJobList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Batch::V2alpha1::CronJob), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "CronJobList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Batch::V2alpha1::CronJob), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "batch/v2alpha1"
      @kind = "CronJobList"
    end
  end

  module Resources::Batch::V2alpha1
    include Resource
    alias CronJobList = Definitions::Kubernetes::Apis::Batch::V2alpha1::CronJobList
  end
end
