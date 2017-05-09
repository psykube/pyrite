# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # Job represents the configuration of a single job. DEPRECATED: [extensions/v1beta1.Job is deprecated, use batch/v1.Job instead.](extensions/v1beta1.Job is deprecated, use batch/v1.Job instead.)
  class Definitions::V1beta1::Job
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec is a structure defining the expected behavior of a job. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : V1beta1::JobSpec

    # Status is a structure describing current status of a job. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : V1beta1::JobStatus

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::JobSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1beta1::JobStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::JobSpec, nilable: true, key: spec, getter: false, setter: false},
                  status:   {type: V1beta1::JobStatus, nilable: true, key: status, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V1beta1::JobSpec = nil, @status : V1beta1::JobStatus = nil)
    end
  end
end
