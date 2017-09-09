# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HTTPHeader describes a custom header to be used in HTTP probes
  class Kubernetes::Api::V1::HTTPHeader
    # The header field name
    property name : String

    # The header field value
    property value : String

    YAML.mapping({
      name:  {type: String, nilable: false, key: "name"},
      value: {type: String, nilable: false, key: "value"},
    }, true)

    JSON.mapping({
      name:  {type: String, nilable: false, key: "name"},
      value: {type: String, nilable: false, key: "value"},
    }, true)

    def initialize(*, @name : String | Nil = nil, @value : String | Nil = nil)
    end
  end
end
