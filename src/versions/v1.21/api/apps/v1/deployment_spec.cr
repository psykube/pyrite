# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeploymentSpec is the specification of the desired behavior of the Deployment.
  class Api::Apps::V1::DeploymentSpec < Kubernetes::Spec
    # Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
    @[::JSON::Field(key: "minReadySeconds")]
    @[::YAML::Field(key: "minReadySeconds")]
    property min_ready_seconds : Int32 | Nil

    # Indicates that the deployment is paused.
    @[::JSON::Field(key: "paused")]
    @[::YAML::Field(key: "paused")]
    property paused : Bool | Nil

    # The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
    @[::JSON::Field(key: "progressDeadlineSeconds")]
    @[::YAML::Field(key: "progressDeadlineSeconds")]
    property progress_deadline_seconds : Int32 | Nil

    # Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
    @[::JSON::Field(key: "replicas")]
    @[::YAML::Field(key: "replicas")]
    property replicas : Int32 | Nil

    # The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
    @[::JSON::Field(key: "revisionHistoryLimit")]
    @[::YAML::Field(key: "revisionHistoryLimit")]
    property revision_history_limit : Int32 | Nil

    # Label selector for pods. Existing ReplicaSets whose pods are selected by this will be the ones affected by this deployment. It must match the pod template's labels.
    @[::JSON::Field(key: "selector")]
    @[::YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector

    # The deployment strategy to use to replace existing pods with new ones.
    @[::JSON::Field(key: "strategy")]
    @[::YAML::Field(key: "strategy")]
    property strategy : Api::Apps::V1::DeploymentStrategy | Nil

    # Template describes the pods that will be created.
    @[::JSON::Field(key: "template")]
    @[::YAML::Field(key: "template")]
    property template : Api::Core::V1::PodTemplateSpec

    def initialize(*, @min_ready_seconds : Int32 | Nil = nil, @paused : Bool | Nil = nil, @progress_deadline_seconds : Int32 | Nil = nil, @replicas : Int32 | Nil = nil, @revision_history_limit : Int32 | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector, @strategy : Api::Apps::V1::DeploymentStrategy | Nil = nil, @template : Api::Core::V1::PodTemplateSpec)
    end
  end
end
