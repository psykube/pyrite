# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
  class Api::Networking::V1::HTTPIngressRuleValue < Kubernetes::Spec
    # A collection of paths that map requests to backends.
    @[::JSON::Field(key: "paths")]
    @[::YAML::Field(key: "paths")]
    property paths : Array(Api::Networking::V1::HTTPIngressPath)

    def initialize(*, @paths : Array)
    end
  end
end
