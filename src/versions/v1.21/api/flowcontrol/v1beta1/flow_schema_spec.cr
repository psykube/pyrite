# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FlowSchemaSpec describes how the FlowSchema's specification looks like.
  class Api::Flowcontrol::V1beta1::FlowSchemaSpec < Kubernetes::Spec
    # `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
    @[::JSON::Field(key: "distinguisherMethod")]
    @[::YAML::Field(key: "distinguisherMethod")]
    property distinguisher_method : Api::Flowcontrol::V1beta1::FlowDistinguisherMethod | Nil

    # `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
    @[::JSON::Field(key: "matchingPrecedence")]
    @[::YAML::Field(key: "matchingPrecedence")]
    property matching_precedence : Int32 | Nil

    # `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
    @[::JSON::Field(key: "priorityLevelConfiguration")]
    @[::YAML::Field(key: "priorityLevelConfiguration")]
    property priority_level_configuration : Api::Flowcontrol::V1beta1::PriorityLevelConfigurationReference

    # `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
    @[::JSON::Field(key: "rules")]
    @[::YAML::Field(key: "rules")]
    property rules : Array(Api::Flowcontrol::V1beta1::PolicyRulesWithSubjects) | Nil

    def initialize(*, @distinguisher_method : Api::Flowcontrol::V1beta1::FlowDistinguisherMethod | Nil = nil, @matching_precedence : Int32 | Nil = nil, @priority_level_configuration : Api::Flowcontrol::V1beta1::PriorityLevelConfigurationReference, @rules : Array | Nil = nil)
    end
  end
end
