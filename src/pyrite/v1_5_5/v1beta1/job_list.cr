# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # JobList is a collection of jobs. DEPRECATED: [extensions/v1beta1.JobList is deprecated, use batch/v1.JobList instead.](extensions/v1beta1.JobList is deprecated, use batch/v1.JobList instead.)
  class Definitions::V1beta1::JobList
    # Items is the list of Job.
    property items : Array(V1beta1::Job)

    # Standard list metadata More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Unversioned::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "JobList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(V1beta1::Job), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "JobList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(V1beta1::Job), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Unversioned::ListMeta = nil)
      @api_version = "v1beta1"
      @kind = "JobList"
    end
  end

  module Resources::V1beta1
    include Resource
    alias JobList = Definitions::V1beta1::JobList
  end
end
