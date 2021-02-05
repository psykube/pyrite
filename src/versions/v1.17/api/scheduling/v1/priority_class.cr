# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityClass defines mapping from a priority class name to the priority integer value. The value can be any valid integer.
  class Api::Scheduling::V1::PriorityClass
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("scheduling/v1"))]
    @[::YAML::Field(key: "apiVersion", converter: ::Pyrite::StringChecker.new("scheduling/v1"))]
    # The API and version we are accessing.
    getter api_version : String = "scheduling/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "PriorityClass"
    # description is an arbitrary string that usually provides guidelines on when this priority class should be used.
    @[::JSON::Field(key: "description")]
    @[::YAML::Field(key: "description")]
    property description : String | Nil

    # globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
    @[::JSON::Field(key: "globalDefault")]
    @[::YAML::Field(key: "globalDefault")]
    property global_default : Bool | Nil

    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset. This field is alpha-level and is only honored by servers that enable the NonPreemptingPriority feature.
    @[::JSON::Field(key: "preemptionPolicy")]
    @[::YAML::Field(key: "preemptionPolicy")]
    property preemption_policy : String | Nil

    # The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
    @[::JSON::Field(key: "value")]
    @[::YAML::Field(key: "value")]
    property value : Int32

    def initialize(*, @description : String | Nil = nil, @global_default : Bool | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @preemption_policy : String | Nil = nil, @value : Int32)
    end
  end

  module Resources::Scheduling::V1
    alias PriorityClass = ::Pyrite::Api::Scheduling::V1::PriorityClass
  end
end