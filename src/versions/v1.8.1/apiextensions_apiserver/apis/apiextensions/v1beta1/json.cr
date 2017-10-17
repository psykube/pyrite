# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JSON represents any valid JSON value. These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON
    property raw : String

    YAML.mapping({
      raw: {type: String, nilable: false, key: "Raw", getter: false, setter: false},
    }, true)

    JSON.mapping({
      raw: {type: String, nilable: false, key: "Raw", getter: false, setter: false},
    }, true)

    def initialize(*, @raw : String | Nil = nil)
    end
  end
end
