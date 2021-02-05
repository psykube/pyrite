# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.
  class Api::Discovery::V1beta1::EndpointSlice
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "discovery/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "EndpointSlice"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "discovery/v1beta1" && instance.kind == "EndpointSlice"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "discovery/v1beta1" && instance.kind == "EndpointSlice"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
    @[::JSON::Field(key: "addressType")]
    @[::YAML::Field(key: "addressType")]
    property address_type : String

    # endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
    @[::JSON::Field(key: "endpoints")]
    @[::YAML::Field(key: "endpoints")]
    property endpoints : Array(Api::Discovery::V1beta1::Endpoint)

    # Standard object's metadata.
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
    @[::JSON::Field(key: "ports")]
    @[::YAML::Field(key: "ports")]
    property ports : Array(Api::Discovery::V1beta1::EndpointPort) | Nil

    def initialize(*, @address_type : String, @endpoints : Array, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @ports : Array | Nil = nil)
    end
  end

  module Resources::Discovery::V1beta1
    alias EndpointSlice = ::Pyrite::Api::Discovery::V1beta1::EndpointSlice
  end
end
