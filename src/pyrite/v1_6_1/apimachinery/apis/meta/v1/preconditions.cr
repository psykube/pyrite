# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
class Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions
  # Specifies the target UID.
  property uid : String?

  YAML.mapping({uid: {type: String, nilable: true, key: uid, getter: false, setter: false}}, true)

  JSON.mapping({uid: {type: String, nilable: true, key: uid, getter: false, setter: false}}, true)

  def initialize(@uid : String? = nil)
  end
end
