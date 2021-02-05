# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JSON represents any valid JSON value. These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "Raw")]
    @[::YAML::Field(key: "Raw")]
    property raw : String

    def initialize(*, @raw : String)
    end
  end
end
