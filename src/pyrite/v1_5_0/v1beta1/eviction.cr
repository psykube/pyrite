# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # Eviction evicts a pod from its node subject to certain policies and safety constraints. This is a subresource of Pod.  A request to cause such an eviction is created by POSTing to [.../pods/<pod name>/evictions.](.../pods/<pod name>/evictions.)
  class Definitions::V1beta1::Eviction
    # DeleteOptions may be provided
    property delete_options : V1::DeleteOptions

    # ObjectMeta describes the pod that is being evicted.
    property metadata : V1::ObjectMeta

    YAML.mapping({delete_options: {type: V1::DeleteOptions, nilable: true, key: deleteOptions, getter: false, setter: false},
                  metadata:       {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({delete_options: {type: V1::DeleteOptions, nilable: true, key: deleteOptions, getter: false, setter: false},
                  metadata:       {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@delete_options : V1::DeleteOptions = nil, @metadata : V1::ObjectMeta = nil)
    end
  end
end
