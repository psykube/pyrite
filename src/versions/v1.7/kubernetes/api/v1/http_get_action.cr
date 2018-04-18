# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HTTPGetAction describes an action based on HTTP Get requests.
  class Kubernetes::Api::V1::HTTPGetAction
    # Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
    property host : String | Nil

    # Custom headers to set in the request. HTTP allows repeated headers.
    property http_headers : Array(Kubernetes::Api::V1::HTTPHeader) | Nil

    # Path to access on the HTTP server.
    property path : String | Nil

    # Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    property port : Int32 | String

    # Scheme to use for connecting to the host. Defaults to HTTP.
    property scheme : String | Nil

    ::YAML.mapping({
      host:         {type: String, nilable: true, key: "host", getter: false, setter: false},
      http_headers: {type: Array(Kubernetes::Api::V1::HTTPHeader), nilable: true, key: "httpHeaders", getter: false, setter: false},
      path:         {type: String, nilable: true, key: "path", getter: false, setter: false},
      port:         {type: Int32 | String, nilable: false, key: "port", getter: false, setter: false},
      scheme:       {type: String, nilable: true, key: "scheme", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      host:         {type: String, nilable: true, key: "host", getter: false, setter: false},
      http_headers: {type: Array(Kubernetes::Api::V1::HTTPHeader), nilable: true, key: "httpHeaders", getter: false, setter: false},
      path:         {type: String, nilable: true, key: "path", getter: false, setter: false},
      port:         {type: Int32 | String, nilable: false, key: "port", getter: false, setter: false},
      scheme:       {type: String, nilable: true, key: "scheme", getter: false, setter: false},
    }, true)

    def initialize(*, @port : Int32 | String, @host : String | Nil = nil, @http_headers : Array | Nil = nil, @path : String | Nil = nil, @scheme : String | Nil = nil)
    end
  end
end
