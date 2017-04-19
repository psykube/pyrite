# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# CronJob represents the configuration of a single cron job.
class Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJob
  # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec is a structure defining the expected behavior of a job, including the schedule. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
  property spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec

  # Status is a structure describing current status of a job. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
  property status : ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus

  YAML.mapping({
    api_version: {type: String, default: "CronJob", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "CronJob", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec = nil, @status : ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus = nil)
    @api_version = "CronJob"
    @kind = "v2alpha1"
  end

  # create a CronJob
  def create(context : String? = nil)
  end

  # list or watch objects of kind CronJob
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of CronJob
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # read the specified CronJob
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil, namespace : String = "default")
  end

  # replace the specified CronJob
  def replace(context : String? = nil)
  end

  # partially update the specified CronJob
  def patch(context : String? = nil)
  end

  # delete a CronJob
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end

  # read status of the specified CronJob
  def self.read_status(name : String, context : String? = nil, namespace : String = "default")
  end

  # replace status of the specified CronJob
  def replace_status(context : String? = nil)
  end

  # partially update status of the specified CronJob
  def patch_status(context : String? = nil)
  end

  # create a ScheduledJob
  def create_batch_v2alpha1scheduled_job(context : String? = nil)
  end

  # list or watch objects of kind ScheduledJob
  def self.list_batch_v2alpha1scheduled_job(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of ScheduledJob
  def self.delete_batch_v2alpha1scheduled_job(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # read the specified ScheduledJob
  def self.read_batch_v2alpha1scheduled_job(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil, namespace : String = "default")
  end

  # replace the specified ScheduledJob
  def replace_batch_v2alpha1scheduled_job(context : String? = nil)
  end

  # partially update the specified ScheduledJob
  def patch_batch_v2alpha1scheduled_job(context : String? = nil)
  end

  # delete a ScheduledJob
  def delete_batch_v2alpha1scheduled_job(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end

  # read status of the specified ScheduledJob
  def self.read_batch_v2alpha1scheduled_job_status(name : String, context : String? = nil, namespace : String = "default")
  end

  # replace status of the specified ScheduledJob
  def replace_batch_v2alpha1scheduled_job_status(context : String? = nil)
  end

  # partially update status of the specified ScheduledJob
  def patch_batch_v2alpha1scheduled_job_status(context : String? = nil)
  end
end
