# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
  class Kubernetes::Apis::Authorization::V1::NonResourceAttributes
    # Path is the URL path of the request
    property path : String | Nil

    # Verb is the standard HTTP verb
    property verb : String | Nil

    YAML.mapping({
      path: {type: String, nilable: true, key: "path"},
      verb: {type: String, nilable: true, key: "verb"},
    }, true)

    JSON.mapping({
      path: {type: String, nilable: true, key: "path"},
      verb: {type: String, nilable: true, key: "verb"},
    }, true)

    def initialize(*, @path : String | Nil = nil, @verb : String | Nil = nil)
    end
  end
end
