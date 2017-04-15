require "yaml"
require "json"

# NodeAddress contains information for the node's address.
class K8S::V1_6_0::Kubernetes::Api::V1::NodeAddress
  # The node address.
  property address : String

  # Node address type, one of Hostname, ExternalIP or InternalIP.
  property type : String

  YAML.mapping({address: {type: String, nilable: false, key: address, getter: false, setter: false},
                type:    {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

  JSON.mapping({address: {type: String, nilable: false, key: address, getter: false, setter: false},
                type:    {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

  def initialize(@address, @type)
  end
end
