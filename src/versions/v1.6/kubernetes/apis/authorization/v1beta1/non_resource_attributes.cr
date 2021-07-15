# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
  class Kubernetes::Apis::Authorization::V1beta1::NonResourceAttributes < Kubernetes::Spec
    # Path is the URL path of the request
    @[::JSON::Field(key: "path")]
    @[::YAML::Field(key: "path")]
    property path : String | Nil

    # Verb is the standard HTTP verb
    @[::JSON::Field(key: "verb")]
    @[::YAML::Field(key: "verb")]
    property verb : String | Nil

    def initialize(*, @path : String | Nil = nil, @verb : String | Nil = nil)
    end
  end
end
