# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LimitRangeItem defines a [min/max usage limit for any resource that matches on kind.](min/max usage limit for any resource that matches on kind.)
  class Kubernetes::Api::V1::LimitRangeItem < Kubernetes::Spec
    # Default resource requirement limit value by resource name if resource limit is omitted.
    @[::JSON::Field(key: "default")]
    @[::YAML::Field(key: "default")]
    property default : Hash(String, String) | Nil

    # DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
    @[::JSON::Field(key: "defaultRequest")]
    @[::YAML::Field(key: "defaultRequest")]
    property default_request : Hash(String, String) | Nil

    # Max usage constraints on this kind by resource name.
    @[::JSON::Field(key: "max")]
    @[::YAML::Field(key: "max")]
    property max : Hash(String, String) | Nil

    # MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
    @[::JSON::Field(key: "maxLimitRequestRatio")]
    @[::YAML::Field(key: "maxLimitRequestRatio")]
    property max_limit_request_ratio : Hash(String, String) | Nil

    # Min usage constraints on this kind by resource name.
    @[::JSON::Field(key: "min")]
    @[::YAML::Field(key: "min")]
    property min : Hash(String, String) | Nil

    # Type of resource that this limit applies to.
    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String | Nil

    def initialize(*, @default : Hash(String, String) | Nil = nil, @default_request : Hash(String, String) | Nil = nil, @max : Hash(String, String) | Nil = nil, @max_limit_request_ratio : Hash(String, String) | Nil = nil, @min : Hash(String, String) | Nil = nil, @type : String | Nil = nil)
    end
  end
end
