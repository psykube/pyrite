# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodPresetSpec is a description of a pod preset.
  class Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec
    # Env defines the collection of EnvVar to inject into containers.
    property env : Array(Kubernetes::Api::V1::EnvVar) | Nil

    # EnvFrom defines the collection of EnvFromSource to inject into containers.
    property env_from : Array(Kubernetes::Api::V1::EnvFromSource) | Nil

    # Selector is a label query over a set of resources, in this case pods. Required.
    property selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil

    # VolumeMounts defines the collection of VolumeMount to inject into containers.
    property volume_mounts : Array(Kubernetes::Api::V1::VolumeMount) | Nil

    # Volumes defines the collection of Volume to inject into the pod.
    property volumes : Array(Kubernetes::Api::V1::Volume) | Nil

    ::YAML.mapping({
      env:           {type: Array(Kubernetes::Api::V1::EnvVar), nilable: true, key: "env", getter: false, setter: false},
      env_from:      {type: Array(Kubernetes::Api::V1::EnvFromSource), nilable: true, key: "envFrom", getter: false, setter: false},
      selector:      {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      volume_mounts: {type: Array(Kubernetes::Api::V1::VolumeMount), nilable: true, key: "volumeMounts", getter: false, setter: false},
      volumes:       {type: Array(Kubernetes::Api::V1::Volume), nilable: true, key: "volumes", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      env:           {type: Array(Kubernetes::Api::V1::EnvVar), nilable: true, key: "env", getter: false, setter: false},
      env_from:      {type: Array(Kubernetes::Api::V1::EnvFromSource), nilable: true, key: "envFrom", getter: false, setter: false},
      selector:      {type: Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: "selector", getter: false, setter: false},
      volume_mounts: {type: Array(Kubernetes::Api::V1::VolumeMount), nilable: true, key: "volumeMounts", getter: false, setter: false},
      volumes:       {type: Array(Kubernetes::Api::V1::Volume), nilable: true, key: "volumes", getter: false, setter: false},
    }, true)

    def initialize(*, @env : Array | Nil = nil, @env_from : Array | Nil = nil, @selector : Apimachinery::Apis::Meta::V1::LabelSelector | Nil = nil, @volume_mounts : Array | Nil = nil, @volumes : Array | Nil = nil)
    end
  end
end
