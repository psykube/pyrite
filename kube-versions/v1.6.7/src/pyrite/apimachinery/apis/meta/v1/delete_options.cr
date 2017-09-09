# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DeleteOptions may be provided when deleting an API object.
  class Apimachinery::Apis::Meta::V1::DeleteOptions
    # APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#resources)
    property api_version : String | Nil

    # The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
    property grace_period_seconds : Int32 | Nil

    # Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    property kind : String | Nil

    # Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If [true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.](true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.)
    property orphan_dependents : Bool | Nil

    # Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
    property preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil

    # Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy.
    property propagation_policy : String | Nil

    YAML.mapping({
      api_version:          {type: String, nilable: true, key: "apiVersion"},
      grace_period_seconds: {type: Int32, nilable: true, key: "gracePeriodSeconds"},
      kind:                 {type: String, nilable: true, key: "kind"},
      orphan_dependents:    {type: Bool, nilable: true, key: "orphanDependents"},
      preconditions:        {type: Apimachinery::Apis::Meta::V1::Preconditions, nilable: true, key: "preconditions"},
      propagation_policy:   {type: String, nilable: true, key: "propagationPolicy"},
    }, true)

    JSON.mapping({
      api_version:          {type: String, nilable: true, key: "apiVersion"},
      grace_period_seconds: {type: Int32, nilable: true, key: "gracePeriodSeconds"},
      kind:                 {type: String, nilable: true, key: "kind"},
      orphan_dependents:    {type: Bool, nilable: true, key: "orphanDependents"},
      preconditions:        {type: Apimachinery::Apis::Meta::V1::Preconditions, nilable: true, key: "preconditions"},
      propagation_policy:   {type: String, nilable: true, key: "propagationPolicy"},
    }, true)

    def initialize(*, @api_version : String | Nil = nil, @grace_period_seconds : Int32 | Nil = nil, @kind : String | Nil = nil, @orphan_dependents : Bool | Nil = nil, @preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, @propagation_policy : String | Nil = nil)
    end
  end
end
