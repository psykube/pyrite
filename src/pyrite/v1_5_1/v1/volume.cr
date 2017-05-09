# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # Volume represents a named volume in a pod that may be accessed by any container in the pod.
  class Definitions::V1::Volume
    # Volume's name. Must be a DNS_LABEL and unique within the pod. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    YAML.mapping({name: {type: String, nilable: false, key: name, getter: false, setter: false}}, true)

    JSON.mapping({name: {type: String, nilable: false, key: name, getter: false, setter: false}}, true)

    def initialize(@name : String? = nil)
    end
  end
end
