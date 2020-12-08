# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of an EphemeralVolumeSource.
  class Api::Core::V1::PersistentVolumeClaimTemplate
    # May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
    property spec : Api::Core::V1::PersistentVolumeClaimSpec

    ::YAML.mapping({
      metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:     {type: Api::Core::V1::PersistentVolumeClaimSpec, nilable: false, key: "spec", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      metadata: {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:     {type: Api::Core::V1::PersistentVolumeClaimSpec, nilable: false, key: "spec", getter: false, setter: false},
    }, true)

    def initialize(*, @spec : Api::Core::V1::PersistentVolumeClaimSpec, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end
end
