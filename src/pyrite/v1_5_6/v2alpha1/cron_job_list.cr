# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_6
  # CronJobList is a collection of cron jobs.
  class Definitions::V2alpha1::CronJobList
    # Items is the list of CronJob.
    property items : Array(V2alpha1::CronJob)

    # Standard list metadata More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "CronJobList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
      items:       {type: Array(V2alpha1::CronJob), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "CronJobList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
      items:       {type: Array(V2alpha1::CronJob), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v2alpha1"
      @kind = "CronJobList"
    end
  end

  module Resources::V2alpha1
    include Resource
    alias CronJobList = Definitions::V2alpha1::CronJobList
  end
end
