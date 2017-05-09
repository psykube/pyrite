# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # LimitRangeItem defines a [min/max usage limit for any resource that matches on kind.](min/max usage limit for any resource that matches on kind.)
  class Definitions::Kubernetes::Api::V1::LimitRangeItem
    # Default resource requirement limit value by resource name if resource limit is omitted.
    property default : Hash(String, String)?

    # DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
    property default_request : Hash(String, String)?

    # Max usage constraints on this kind by resource name.
    property max : Hash(String, String)?

    # MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
    property max_limit_request_ratio : Hash(String, String)?

    # Min usage constraints on this kind by resource name.
    property min : Hash(String, String)?

    # Type of resource that this limit applies to.
    property type : String?

    YAML.mapping({default:                 {type: Hash(String, String), nilable: true, key: default, getter: false, setter: false},
                  default_request:         {type: Hash(String, String), nilable: true, key: defaultRequest, getter: false, setter: false},
                  max:                     {type: Hash(String, String), nilable: true, key: max, getter: false, setter: false},
                  max_limit_request_ratio: {type: Hash(String, String), nilable: true, key: maxLimitRequestRatio, getter: false, setter: false},
                  min:                     {type: Hash(String, String), nilable: true, key: min, getter: false, setter: false},
                  type:                    {type: String, nilable: true, key: type, getter: false, setter: false}}, true)

    JSON.mapping({default:                 {type: Hash(String, String), nilable: true, key: default, getter: false, setter: false},
                  default_request:         {type: Hash(String, String), nilable: true, key: defaultRequest, getter: false, setter: false},
                  max:                     {type: Hash(String, String), nilable: true, key: max, getter: false, setter: false},
                  max_limit_request_ratio: {type: Hash(String, String), nilable: true, key: maxLimitRequestRatio, getter: false, setter: false},
                  min:                     {type: Hash(String, String), nilable: true, key: min, getter: false, setter: false},
                  type:                    {type: String, nilable: true, key: type, getter: false, setter: false}}, true)

    def initialize(@default : Hash(String, String)? = nil, @default_request : Hash(String, String)? = nil, @max : Hash(String, String)? = nil, @max_limit_request_ratio : Hash(String, String)? = nil, @min : Hash(String, String)? = nil, @type : String? = nil)
    end
  end
end
