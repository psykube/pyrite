# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # List is a generic list of resources
  class Kubernetes::Api::V1::List
    # list of resources
    property items : Array(Kubernetes::Resource) | Nil

    YAML.mapping({
      items: {type: Array(Kubernetes::Resource), nilable: true, key: "items", getter: false, setter: false},
    }, true)

    JSON.mapping({
      items: {type: Array(Kubernetes::Resource), nilable: true, key: "items", getter: false, setter: false},
    }, true)

    def initialize(*, @items : Array | Nil = nil)
    end
  end
end
