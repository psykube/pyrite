# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# CronJob represents the configuration of a single cron job.
class Pyrite::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJob
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec is a structure defining the expected behavior of a job, including the schedule.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property spec : ::Pyrite::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec

  # Status is a structure describing current status of a job.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status
  property status : ::Pyrite::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus

  YAML.mapping({
    api_version: {type: String, default: "CronJob", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "CronJob", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "CronJob"
    @kind = "v2alpha1"
  end

  # create a CronJob
  def create
  end

  # list or watch objects of kind CronJob
  def self.list(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of CronJob
  def self.delete(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified CronJob
  def self.read(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified CronJob
  def replace
  end

  # partially update the specified CronJob
  def patch
  end

  # delete a CronJob
  def delete(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified CronJob
  def self.read_status(name : String, namespace : String = "default")
  end

  # replace status of the specified CronJob
  def replace_status
  end

  # partially update status of the specified CronJob
  def patch_status
  end

  # create a ScheduledJob
  def create_batch_v2alpha1scheduled_job
  end

  # list or watch objects of kind ScheduledJob
  def self.list_batch_v2alpha1scheduled_job(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # delete collection of ScheduledJob
  def self.delete_batch_v2alpha1scheduled_job(field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified ScheduledJob
  def self.read_batch_v2alpha1scheduled_job(exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified ScheduledJob
  def replace_batch_v2alpha1scheduled_job
  end

  # partially update the specified ScheduledJob
  def patch_batch_v2alpha1scheduled_job
  end

  # delete a ScheduledJob
  def delete_batch_v2alpha1scheduled_job(grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # read status of the specified ScheduledJob
  def self.read_batch_v2alpha1scheduled_job_status(name : String, namespace : String = "default")
  end

  # replace status of the specified ScheduledJob
  def replace_batch_v2alpha1scheduled_job_status
  end

  # partially update status of the specified ScheduledJob
  def patch_batch_v2alpha1scheduled_job_status
  end
end
