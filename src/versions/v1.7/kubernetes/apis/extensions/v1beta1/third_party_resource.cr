# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A ThirdPartyResource is a generic representation of a resource, it is used by add-ons and plugins to add new resource types to the API.  It consists of one or more Versions of the api.
  class Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource < Kubernetes::Object
    @api_version = "extensions/v1beta1"
    @kind = "ThirdPartyResource"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "extensions/v1beta1" && instance.kind == "ThirdPartyResource"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "extensions/v1beta1" && instance.kind == "ThirdPartyResource"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Description is the description of this object.
    @[::JSON::Field(key: "description")]
    @[::YAML::Field(key: "description")]
    property description : String | Nil

    # Versions are versions for this third party object
    @[::JSON::Field(key: "versions")]
    @[::YAML::Field(key: "versions")]
    property versions : Array(Kubernetes::Apis::Extensions::V1beta1::APIVersion) | Nil

    def initialize(*, @description : String | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @versions : Array | Nil = nil)
    end
  end
end
