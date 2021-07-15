# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalDocumentation allows referencing an external resource for extended documentation.
  class ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation < Kubernetes::Spec
    @[::JSON::Field(key: "description")]
    @[::YAML::Field(key: "description")]
    property description : String | Nil

    @[::JSON::Field(key: "url")]
    @[::YAML::Field(key: "url")]
    property url : String | Nil

    def initialize(*, @description : String | Nil = nil, @url : String | Nil = nil)
    end
  end
end
