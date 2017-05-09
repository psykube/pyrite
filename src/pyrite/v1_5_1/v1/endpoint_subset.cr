# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # EndpointSubset is a group of addresses with a common set of ports. The expanded set of endpoints is the Cartesian product of Addresses x Ports. For example, given:
  #   {
  #     Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
  #     Ports:     [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
  #   }
  # The resulting set of endpoints can be viewed as:
  #     a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],
  #     b: [ 10.10.1.1:309, 10.10.2.2:309 ]
  class Definitions::V1::EndpointSubset
    # IP addresses which offer the related ports that are marked as ready. These endpoints should be considered safe for load balancers and clients to utilize.
    property addresses : Array(V1::EndpointAddress)?

    # IP addresses which offer the related ports but are not currently marked as ready because they have not yet finished starting, have recently failed a readiness check, or have recently failed a liveness check.
    property not_ready_addresses : Array(V1::EndpointAddress)?

    # Port numbers available on the related IP addresses.
    property ports : Array(V1::EndpointPort)?

    YAML.mapping({addresses:           {type: Array(V1::EndpointAddress), nilable: true, key: addresses, getter: false, setter: false},
                  not_ready_addresses: {type: Array(V1::EndpointAddress), nilable: true, key: notReadyAddresses, getter: false, setter: false},
                  ports:               {type: Array(V1::EndpointPort), nilable: true, key: ports, getter: false, setter: false}}, true)

    JSON.mapping({addresses:           {type: Array(V1::EndpointAddress), nilable: true, key: addresses, getter: false, setter: false},
                  not_ready_addresses: {type: Array(V1::EndpointAddress), nilable: true, key: notReadyAddresses, getter: false, setter: false},
                  ports:               {type: Array(V1::EndpointPort), nilable: true, key: ports, getter: false, setter: false}}, true)

    def initialize(@addresses : Array? = nil, @not_ready_addresses : Array? = nil, @ports : Array? = nil)
    end
  end
end
