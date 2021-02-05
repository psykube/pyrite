# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JobSpec describes how the job execution will look like.
  class Kubernetes::Apis::Batch::V1::JobSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Optional duration in seconds relative to the startTime that the job may be active before the system tries to terminate it; value must be positive integer
    @[::JSON::Field(key: "activeDeadlineSeconds")]
    @[::YAML::Field(key: "activeDeadlineSeconds")]
    property active_deadline_seconds : Int32 | Nil

    # Completions specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: [http://kubernetes.io/docs/user-guide/jobs](http://kubernetes.io/docs/user-guide/jobs)
    @[::JSON::Field(key: "completions")]
    @[::YAML::Field(key: "completions")]
    property completions : Int32 | Nil

    # ManualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old [`extensions/v1beta1` API. More info: http://releases.k8s.io/HEAD/docs/design/selector-generation.md](`extensions/v1beta1` API. More info: http://releases.k8s.io/HEAD/docs/design/selector-generation.md)
    @[::JSON::Field(key: "manualSelector")]
    @[::YAML::Field(key: "manualSelector")]
    property manual_selector : Bool | Nil

    # Parallelism specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: [http://kubernetes.io/docs/user-guide/jobs](http://kubernetes.io/docs/user-guide/jobs)
    @[::JSON::Field(key: "parallelism")]
    @[::YAML::Field(key: "parallelism")]
    property parallelism : Int32 | Nil

    # Selector is a label query over pods that should match the pod count. Normally, the system sets this field for you. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    @[::JSON::Field(key: "selector")]
    @[::YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # Template is the object that describes the pod that will be created when executing a job. More info: [http://kubernetes.io/docs/user-guide/jobs](http://kubernetes.io/docs/user-guide/jobs)
    @[::JSON::Field(key: "template")]
    @[::YAML::Field(key: "template")]
    property template : Kubernetes::Api::V1::PodTemplateSpec

    def initialize(*, @active_deadline_seconds : Int32 | Nil = nil, @completions : Int32 | Nil = nil, @manual_selector : Bool | Nil = nil, @parallelism : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @template : Kubernetes::Api::V1::PodTemplateSpec)
    end
  end
end
