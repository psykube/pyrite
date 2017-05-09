# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # SecretKeySelector selects a key of a Secret.
  class Definitions::V1::SecretKeySelector
    # The key of the secret to select from.  Must be a valid secret key.
    property key : String

    YAML.mapping({key: {type: String, nilable: false, key: key, getter: false, setter: false}}, true)

    JSON.mapping({key: {type: String, nilable: false, key: key, getter: false, setter: false}}, true)

    def initialize(@key : String? = nil)
    end
  end
end
