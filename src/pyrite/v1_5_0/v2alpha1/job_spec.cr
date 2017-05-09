# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # JobSpec describes how the job execution will look like.
  class Definitions::V2alpha1::JobSpec
    # Optional duration in seconds relative to the startTime that the job may be active before the system tries to terminate it; value must be positive integer
    property active_deadline_seconds : Int32?

    # Completions specifies the desired number of successfully finished pods the job should be run with.  Setting to nil means that the success of any pod signals the success of all pods, and allows parallelism to have any positive value.  Setting to 1 means that parallelism is limited to 1 and the success of that pod signals the success of the job. More info: [http://kubernetes.io/docs/user-guide/jobs](http://kubernetes.io/docs/user-guide/jobs)
    property completions : Int32?

    # ManualSelector controls generation of pod labels and pod selectors. Leave `manualSelector` unset unless you are certain what you are doing. When false or unset, the system pick labels unique to this job and appends those labels to the pod template.  When true, the user is responsible for picking unique labels and specifying the selector.  Failure to pick a unique label may cause this and other jobs to not function correctly.  However, You may see `manualSelector=true` in jobs that were created with the old [`extensions/v1beta1` API. More info: http://releases.k8s.io/HEAD/docs/design/selector-generation.md](`extensions/v1beta1` API. More info: http://releases.k8s.io/HEAD/docs/design/selector-generation.md)
    property manual_selector : Bool?

    # Parallelism specifies the maximum desired number of pods the job should run at any given time. The actual number of pods running in steady state will be less than this number when ((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left to do is less than max parallelism. More info: [http://kubernetes.io/docs/user-guide/jobs](http://kubernetes.io/docs/user-guide/jobs)
    property parallelism : Int32?

    # Selector is a label query over pods that should match the pod count. Normally, the system sets this field for you. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    property selector : Unversioned::LabelSelector

    # Template is the object that describes the pod that will be created when executing a job. More info: [http://kubernetes.io/docs/user-guide/jobs](http://kubernetes.io/docs/user-guide/jobs)
    property template : V1::PodTemplateSpec

    YAML.mapping({active_deadline_seconds: {type: Int32, nilable: true, key: activeDeadlineSeconds, getter: false, setter: false},
                  completions:             {type: Int32, nilable: true, key: completions, getter: false, setter: false},
                  manual_selector:         {type: Bool, nilable: true, key: manualSelector, getter: false, setter: false},
                  parallelism:             {type: Int32, nilable: true, key: parallelism, getter: false, setter: false},
                  selector:                {type: Unversioned::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                  template:                {type: V1::PodTemplateSpec, nilable: false, key: template, getter: false, setter: false}}, true)

    JSON.mapping({active_deadline_seconds: {type: Int32, nilable: true, key: activeDeadlineSeconds, getter: false, setter: false},
                  completions:             {type: Int32, nilable: true, key: completions, getter: false, setter: false},
                  manual_selector:         {type: Bool, nilable: true, key: manualSelector, getter: false, setter: false},
                  parallelism:             {type: Int32, nilable: true, key: parallelism, getter: false, setter: false},
                  selector:                {type: Unversioned::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                  template:                {type: V1::PodTemplateSpec, nilable: false, key: template, getter: false, setter: false}}, true)

    def initialize(@active_deadline_seconds : Int32? = nil, @completions : Int32? = nil, @manual_selector : Bool? = nil, @parallelism : Int32? = nil, @selector : Unversioned::LabelSelector = nil, @template : V1::PodTemplateSpec = nil)
    end
  end
end
