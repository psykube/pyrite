# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# CronJobList is a collection of cron jobs.
class Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobList
  # Items is the list of CronJob.
  property items : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJob)

  # Standard list metadata More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "CronJobList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJob), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "CronJobList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
    items:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJob), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ListMeta = nil)
    @api_version = "CronJobList"
    @kind = "v2alpha1"
  end

  # list or watch objects of kind CronJob
  def self.list_for_all_namespaces(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # create a CronJob
  def create(metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec = nil, status : ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus = nil, context : String? = nil)
  end

  # list or watch objects of kind CronJob
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of CronJob
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # create a ScheduledJob
  def create_batch_v2alpha1scheduled_job(metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec = nil, status : ::Pyrite::V1_6_1::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus = nil, context : String? = nil)
  end

  # list or watch objects of kind ScheduledJob
  def self.list_batch_v2alpha1scheduled_job(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # delete collection of ScheduledJob
  def self.delete_batch_v2alpha1scheduled_job(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil, namespace : String = "default")
  end

  # list or watch objects of kind ScheduledJob
  def self.list_batch_v2alpha1scheduled_job_for_all_namespaces(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end
end
