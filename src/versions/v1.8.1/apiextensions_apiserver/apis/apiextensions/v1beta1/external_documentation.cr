# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalDocumentation allows referencing an external resource for extended documentation.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation
    property description : String | Nil

    property url : String | Nil

    YAML.mapping({
      description: {type: String, nilable: true, key: "description", getter: false, setter: false},
      url:         {type: String, nilable: true, key: "url", getter: false, setter: false},
    }, true)

    JSON.mapping({
      description: {type: String, nilable: true, key: "description", getter: false, setter: false},
      url:         {type: String, nilable: true, key: "url", getter: false, setter: false},
    }, true)

    def initialize(*, @description : String | Nil = nil, @url : String | Nil = nil)
    end
  end
end
