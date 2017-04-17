# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# JobTemplateSpec describes the data a Job should have when created from a template
class Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec
  # Standard object's metadata of the jobs created from this template.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Specification of the desired behavior of the job.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V1::JobSpec

  YAML.mapping({metadata: {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                spec:     {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V1::JobSpec, nilable: true, key: spec, getter: false, setter: false}}, true)

  JSON.mapping({metadata: {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                spec:     {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V1::JobSpec, nilable: true, key: spec, getter: false, setter: false}}, true)

  def initialize(@metadata = nil, @spec = nil)
  end
end
