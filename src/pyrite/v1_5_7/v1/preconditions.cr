# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_7
  # Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
  class Definitions::V1::Preconditions
    # Specifies the target UID.
    property uid : String?

    YAML.mapping({uid: {type: String, nilable: true, key: uid, getter: false, setter: false}}, true)

    JSON.mapping({uid: {type: String, nilable: true, key: uid, getter: false, setter: false}}, true)

    def initialize(@uid : String? = nil)
    end
  end
end
