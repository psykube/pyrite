# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # CronJob represents the configuration of a single cron job.
  class Definitions::V2alpha1::CronJob
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec is a structure defining the expected behavior of a job, including the schedule. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : V2alpha1::CronJobSpec

    # Status is a structure describing current status of a job. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : V2alpha1::CronJobStatus

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V2alpha1::CronJobSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V2alpha1::CronJobStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V2alpha1::CronJobSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V2alpha1::CronJobStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V2alpha1::CronJobSpec = nil, @status : V2alpha1::CronJobStatus = nil)
    end
  end
end
