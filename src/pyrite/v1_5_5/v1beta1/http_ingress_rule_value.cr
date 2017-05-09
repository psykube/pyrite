# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
  class Definitions::V1beta1::HTTPIngressRuleValue
    # A collection of paths that map requests to backends.
    property paths : Array(V1beta1::HTTPIngressPath)

    YAML.mapping({paths: {type: Array(V1beta1::HTTPIngressPath), nilable: false, key: paths, getter: false, setter: false}}, true)

    JSON.mapping({paths: {type: Array(V1beta1::HTTPIngressPath), nilable: false, key: paths, getter: false, setter: false}}, true)

    def initialize(@paths : Array? = nil)
    end
  end
end
