# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodPresetSpec is a description of a pod injection policy.
class Pyrite::V1_6_1::Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec
  # Env defines the collection of EnvVar to inject into containers.
  property env : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::EnvVar)?

  # EnvFrom defines the collection of EnvFromSource to inject into containers.
  property env_from : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::EnvFromSource)?

  # Selector is a label query over a set of resources, in this case pods.Required.
  property selector : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector

  # VolumeMounts defines the collection of VolumeMount to inject into containers.
  property volume_mounts : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::VolumeMount)?

  # Volumes defines the collection of Volume to inject into the pod.
  property volumes : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Volume)?

  YAML.mapping({env:           {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::EnvVar), nilable: true, key: env, getter: false, setter: false},
                env_from:      {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::EnvFromSource), nilable: true, key: envFrom, getter: false, setter: false},
                selector:      {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                volume_mounts: {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::VolumeMount), nilable: true, key: volumeMounts, getter: false, setter: false},
                volumes:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Volume), nilable: true, key: volumes, getter: false, setter: false}}, true)

  JSON.mapping({env:           {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::EnvVar), nilable: true, key: env, getter: false, setter: false},
                env_from:      {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::EnvFromSource), nilable: true, key: envFrom, getter: false, setter: false},
                selector:      {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                volume_mounts: {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::VolumeMount), nilable: true, key: volumeMounts, getter: false, setter: false},
                volumes:       {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Volume), nilable: true, key: volumes, getter: false, setter: false}}, true)

  def initialize(@env = nil, @env_from = nil, @selector = nil, @volume_mounts = nil, @volumes = nil)
  end
end
