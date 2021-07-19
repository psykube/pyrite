# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityClass defines mapping from a priority class name to the priority integer value. The value can be any valid integer.
  class Api::Scheduling::V1beta1::PriorityClass < Kubernetes::Object
    @api_version = "scheduling/v1beta1"
    @kind = "PriorityClass"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "scheduling/v1beta1" && instance.kind == "PriorityClass"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "scheduling/v1beta1" && instance.kind == "PriorityClass"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # description is an arbitrary string that usually provides guidelines on when this priority class should be used.
    @[::JSON::Field(key: "description")]
    @[::YAML::Field(key: "description")]
    property description : String | Nil

    # globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
    @[::JSON::Field(key: "globalDefault")]
    @[::YAML::Field(key: "globalDefault")]
    property global_default : Bool | Nil

    # The value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
    @[::JSON::Field(key: "value")]
    @[::YAML::Field(key: "value")]
    property value : Int32

    def initialize(*, @description : String | Nil = nil, @global_default : Bool | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @value : Int32)
    end
  end
end
