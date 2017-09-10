# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
  class Kubernetes::Apis::Extensions::V1beta1::HTTPIngressRuleValue
    # A collection of paths that map requests to backends.
    property paths : Array(Kubernetes::Apis::Extensions::V1beta1::HTTPIngressPath)

    YAML.mapping({
      paths: {type: Array(Kubernetes::Apis::Extensions::V1beta1::HTTPIngressPath), nilable: false, key: "paths"},
    }, true)

    JSON.mapping({
      paths: {type: Array(Kubernetes::Apis::Extensions::V1beta1::HTTPIngressPath), nilable: false, key: "paths"},
    }, true)

    def initialize(*, @paths : Array | Nil = nil)
    end
  end
end
