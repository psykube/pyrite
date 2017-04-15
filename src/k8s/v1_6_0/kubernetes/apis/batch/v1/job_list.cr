require "yaml"
require "json"

# JobList is a collection of jobs.
class K8S::V1_6_0::Kubernetes::Apis::Batch::V1::JobList
  # Items is the list of Job.
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Batch::V1::Job)

  # Standard list metadata More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "JobList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Batch::V1::Job), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "JobList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Batch::V1::Job), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "JobList"
    @kind = "v1"
  end

  # list or watch objects of kind Job
  def self.get
    Kubernetes.client.get
  end

  # list or watch objects of kind Job
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a Job
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end
end
