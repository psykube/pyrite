# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodPresetSpec is a description of a pod injection policy.
  class Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec < Kubernetes::Spec
    # Env defines the collection of EnvVar to inject into containers.
    @[::JSON::Field(key: "env")]
    @[::YAML::Field(key: "env")]
    property env : Array(Kubernetes::Api::V1::EnvVar) | Nil

    # EnvFrom defines the collection of EnvFromSource to inject into containers.
    @[::JSON::Field(key: "envFrom")]
    @[::YAML::Field(key: "envFrom")]
    property env_from : Array(Kubernetes::Api::V1::EnvFromSource) | Nil

    # Selector is a label query over a set of resources, in this case pods. Required.
    @[::JSON::Field(key: "selector")]
    @[::YAML::Field(key: "selector")]
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # VolumeMounts defines the collection of VolumeMount to inject into containers.
    @[::JSON::Field(key: "volumeMounts")]
    @[::YAML::Field(key: "volumeMounts")]
    property volume_mounts : Array(Kubernetes::Api::V1::VolumeMount) | Nil

    # Volumes defines the collection of Volume to inject into the pod.
    @[::JSON::Field(key: "volumes")]
    @[::YAML::Field(key: "volumes")]
    property volumes : Array(Kubernetes::Api::V1::Volume) | Nil

    def initialize(*, @env : Array | Nil = nil, @env_from : Array | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @volume_mounts : Array | Nil = nil, @volumes : Array | Nil = nil)
    end
  end
end
