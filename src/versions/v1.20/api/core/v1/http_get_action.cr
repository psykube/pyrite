# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HTTPGetAction describes an action based on HTTP Get requests.
  class Api::Core::V1::HTTPGetAction
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
    @[::JSON::Field(key: "host")]
    @[::YAML::Field(key: "host")]
    property host : String | Nil

    # Custom headers to set in the request. HTTP allows repeated headers.
    @[::JSON::Field(key: "httpHeaders")]
    @[::YAML::Field(key: "httpHeaders")]
    property http_headers : Array(Api::Core::V1::HTTPHeader) | Nil

    # Path to access on the HTTP server.
    @[::JSON::Field(key: "path")]
    @[::YAML::Field(key: "path")]
    property path : String | Nil

    # Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    @[::JSON::Field(key: "port")]
    @[::YAML::Field(key: "port")]
    property port : Int32 | String

    # Scheme to use for connecting to the host. Defaults to HTTP.
    @[::JSON::Field(key: "scheme")]
    @[::YAML::Field(key: "scheme")]
    property scheme : String | Nil

    def initialize(*, @host : String | Nil = nil, @http_headers : Array | Nil = nil, @path : String | Nil = nil, @port : Int32 | String, @scheme : String | Nil = nil)
    end
  end
end
