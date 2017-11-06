# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IPBlock describes a particular CIDR (Ex. ["192.168.1.1/24") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.]("192.168.1.1/24") that is allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs that should not be included within this rule.)
  class Api::Extensions::V1beta1::IPBlock
    # CIDR is a string representing the IP Block Valid examples are ["192.168.1.1/24"]("192.168.1.1/24")
    property cidr : String

    # Except is a slice of CIDRs that should not be included within an IP Block Valid examples are ["192.168.1.1/24" Except values will be rejected if they are outside the CIDR range]("192.168.1.1/24" Except values will be rejected if they are outside the CIDR range)
    property except : Array(String) | Nil

    YAML.mapping({
      cidr:   {type: String, nilable: false, key: "cidr", getter: false, setter: false},
      except: {type: Array(String), nilable: true, key: "except", getter: false, setter: false},
    }, true)

    JSON.mapping({
      cidr:   {type: String, nilable: false, key: "cidr", getter: false, setter: false},
      except: {type: Array(String), nilable: true, key: "except", getter: false, setter: false},
    }, true)

    def initialize(*, @cidr : String | Nil = nil, @except : Array | Nil = nil)
    end
  end
end
