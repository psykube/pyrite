# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HTTPIngressPath associates a path with a backend. Incoming urls matching the path are forwarded to the backend.
  class Api::Extensions::V1beta1::HTTPIngressPath
    # Backend defines the referenced service endpoint to which the traffic will be forwarded to.
    property backend : Api::Extensions::V1beta1::IngressBackend

    # Path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. When unspecified, all paths from incoming requests are matched.
    property path : String | Nil

    # PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
    #   done on a path element by element basis. A path element refers is the
    #   list of labels in the path split by the '/' separator. A request is a
    #   match for path p if every p is an element-wise prefix of p of the
    #   request path. Note that if the last element of the path is a substring
    #   of the last element in request path, it is not a match (e.g. [/foo/bar](/foo/bar)
    #   matches [/foo/bar/baz, but does not match /foo/barbaz).](/foo/bar/baz, but does not match /foo/barbaz).)
    # * ImplementationSpecific: Interpretation of the Path matching is up to
    #   the IngressClass. Implementations can treat this as a separate PathType
    #   or treat it identically to Prefix or Exact path types.
    # Implementations are required to support all path types. Defaults to ImplementationSpecific.
    property path_type : String | Nil

    ::YAML.mapping({
      backend:   {type: Api::Extensions::V1beta1::IngressBackend, nilable: false, key: "backend", getter: false, setter: false},
      path:      {type: String, nilable: true, key: "path", getter: false, setter: false},
      path_type: {type: String, nilable: true, key: "pathType", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      backend:   {type: Api::Extensions::V1beta1::IngressBackend, nilable: false, key: "backend", getter: false, setter: false},
      path:      {type: String, nilable: true, key: "path", getter: false, setter: false},
      path_type: {type: String, nilable: true, key: "pathType", getter: false, setter: false},
    }, true)

    def initialize(*, @backend : Api::Extensions::V1beta1::IngressBackend, @path : String | Nil = nil, @path_type : String | Nil = nil)
    end
  end
end
