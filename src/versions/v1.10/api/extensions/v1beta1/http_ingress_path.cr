# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HTTPIngressPath associates a path regex with a backend. Incoming urls matching the path are forwarded to the backend.
  class Api::Extensions::V1beta1::HTTPIngressPath
    # Backend defines the referenced service endpoint to which the traffic will be forwarded to.
    property backend : Api::Extensions::V1beta1::IngressBackend

    # Path is an extended POSIX regex as defined by IEEE Std 1003.1, (i.e this follows the [egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.](egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.)
    property path : String | Nil

    ::YAML.mapping({
      backend: {type: Api::Extensions::V1beta1::IngressBackend, nilable: false, key: "backend", getter: false, setter: false},
      path:    {type: String, nilable: true, key: "path", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      backend: {type: Api::Extensions::V1beta1::IngressBackend, nilable: false, key: "backend", getter: false, setter: false},
      path:    {type: String, nilable: true, key: "path", getter: false, setter: false},
    }, true)

    def initialize(*, @backend : Api::Extensions::V1beta1::IngressBackend, @path : String | Nil = nil)
    end
  end
end
