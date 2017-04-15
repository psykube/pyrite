require "yaml"
require "json"

# CronJob represents the configuration of a single cron job.
class K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJob
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec is a structure defining the expected behavior of a job, including the schedule.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec

  # Status is a structure describing current status of a job.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus

  YAML.mapping({
    api_version: {type: String, default: "CronJob", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "CronJob", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "CronJob"
    @kind = "v2alpha1"
  end

  # list or watch objects of kind CronJob
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a CronJob
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified CronJob
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified CronJob
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # list or watch objects of kind ScheduledJob
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a ScheduledJob
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified ScheduledJob
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified ScheduledJob
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
