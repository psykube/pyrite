# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # NodeAddress contains information for the node's address.
  class Definitions::V1::NodeAddress
    # The node address.
    property address : String

    # Node address type, one of Hostname, ExternalIP or InternalIP.
    property type : String

    YAML.mapping({address: {type: String, nilable: false, key: address, getter: false, setter: false},
                  type:    {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

    JSON.mapping({address: {type: String, nilable: false, key: address, getter: false, setter: false},
                  type:    {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

    def initialize(@address : String? = nil, @type : String? = nil)
    end
  end
end
