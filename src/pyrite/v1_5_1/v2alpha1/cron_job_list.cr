# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # CronJobList is a collection of cron jobs.
  class Definitions::V2alpha1::CronJobList
    # Items is the list of CronJob.
    property items : Array(V2alpha1::CronJob)

    # Standard list metadata More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V2alpha1::CronJob), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V2alpha1::CronJob), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
