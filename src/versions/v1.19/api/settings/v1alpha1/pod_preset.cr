# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodPreset is a policy resource that defines additional runtime requirements for a Pod.
  class Api::Settings::V1alpha1::PodPreset
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "settings/v1alpha1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "PodPreset"

    def self.new(pull : JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "settings/v1alpha1" && instance.kind == "PodPreset"
          raise JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : YAML::ParseContext, node : YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "settings/v1alpha1" && instance.kind == "PodPreset"
          raise YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Settings::V1alpha1::PodPresetSpec | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Settings::V1alpha1::PodPresetSpec | Nil = nil)
    end
  end

  module Resources::Settings::V1alpha1
    alias PodPreset = ::Pyrite::Api::Settings::V1alpha1::PodPreset
  end
end
