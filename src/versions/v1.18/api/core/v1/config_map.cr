# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ConfigMap holds configuration data for pods to consume.
  class Api::Core::V1::ConfigMap < Kubernetes::Object
    @api_version = "v1"
    @kind = "ConfigMap"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "ConfigMap"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "ConfigMap"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # BinaryData contains the binary data. Each key must consist of alphanumeric characters, '-', '_' or '.'. BinaryData can contain byte sequences that are not in the UTF-8 range. The keys stored in BinaryData must not overlap with the ones in the Data field, this is enforced during validation process. Using this field will require 1.10+ apiserver and kubelet.
    @[::JSON::Field(key: "binaryData")]
    @[::YAML::Field(key: "binaryData")]
    property binary_data : Hash(String, String) | Nil

    # Data contains the configuration data. Each key must consist of alphanumeric characters, '-', '_' or '.'. Values with non-UTF-8 byte sequences must use the BinaryData field. The keys stored in Data must not overlap with the keys in the BinaryData field, this is enforced during validation process.
    @[::JSON::Field(key: "data")]
    @[::YAML::Field(key: "data")]
    property data : Hash(String, String) | Nil

    # Immutable, if set to true, ensures that data stored in the ConfigMap cannot be updated (only object metadata can be modified). If not set to true, the field can be modified at any time. Defaulted to nil. This is an alpha field enabled by ImmutableEphemeralVolumes feature gate.
    @[::JSON::Field(key: "immutable")]
    @[::YAML::Field(key: "immutable")]
    property immutable : Bool | Nil

    def initialize(*, @binary_data : Hash(String, String) | Nil = nil, @data : Hash(String, String) | Nil = nil, @immutable : Bool | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end
end
