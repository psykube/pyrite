# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LimitRangeItem defines a [min/max usage limit for any resource that matches on kind.](min/max usage limit for any resource that matches on kind.)
  class Kubernetes::Api::V1::LimitRangeItem
    # Default resource requirement limit value by resource name if resource limit is omitted.
    property default : Hash(String, String) | Nil

    # DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
    property default_request : Hash(String, String) | Nil

    # Max usage constraints on this kind by resource name.
    property max : Hash(String, String) | Nil

    # MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
    property max_limit_request_ratio : Hash(String, String) | Nil

    # Min usage constraints on this kind by resource name.
    property min : Hash(String, String) | Nil

    # Type of resource that this limit applies to.
    property type : String | Nil

    YAML.mapping({
      default:                 {type: Hash(String, String), nilable: true, key: "default"},
      default_request:         {type: Hash(String, String), nilable: true, key: "defaultRequest"},
      max:                     {type: Hash(String, String), nilable: true, key: "max"},
      max_limit_request_ratio: {type: Hash(String, String), nilable: true, key: "maxLimitRequestRatio"},
      min:                     {type: Hash(String, String), nilable: true, key: "min"},
      type:                    {type: String, nilable: true, key: "type"},
    }, true)

    JSON.mapping({
      default:                 {type: Hash(String, String), nilable: true, key: "default"},
      default_request:         {type: Hash(String, String), nilable: true, key: "defaultRequest"},
      max:                     {type: Hash(String, String), nilable: true, key: "max"},
      max_limit_request_ratio: {type: Hash(String, String), nilable: true, key: "maxLimitRequestRatio"},
      min:                     {type: Hash(String, String), nilable: true, key: "min"},
      type:                    {type: String, nilable: true, key: "type"},
    }, true)

    def initialize(*, @default : Hash(String, String) | Nil = nil, @default_request : Hash(String, String) | Nil = nil, @max : Hash(String, String) | Nil = nil, @max_limit_request_ratio : Hash(String, String) | Nil = nil, @min : Hash(String, String) | Nil = nil, @type : String | Nil = nil)
    end
  end
end
