# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # Selects a key from a ConfigMap.
  class Definitions::V1::ConfigMapKeySelector
    # The key to select.
    property key : String

    YAML.mapping({key: {type: String, nilable: false, key: key, getter: false, setter: false}}, true)

    JSON.mapping({key: {type: String, nilable: false, key: key, getter: false, setter: false}}, true)

    def initialize(@key : String? = nil)
    end
  end
end
