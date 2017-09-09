# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeAddress contains information for the node's address.
  class Kubernetes::Api::V1::NodeAddress
    # The node address.
    property address : String

    # Node address type, one of Hostname, ExternalIP or InternalIP.
    property type : String

    YAML.mapping({
      address: {type: String, nilable: false, key: "address"},
      type:    {type: String, nilable: false, key: "type"},
    }, true)

    JSON.mapping({
      address: {type: String, nilable: false, key: "address"},
      type:    {type: String, nilable: false, key: "type"},
    }, true)

    def initialize(*, @address : String | Nil = nil, @type : String | Nil = nil)
    end
  end
end
