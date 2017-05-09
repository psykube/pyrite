# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # HTTPGetAction describes an action based on HTTP Get requests.
  class Definitions::Kubernetes::Api::V1::HTTPGetAction
    # Host name to connect to, defaults to the pod IP. You probably want to set "Host" in httpHeaders instead.
    property host : String?

    # Custom headers to set in the request. HTTP allows repeated headers.
    property http_headers : Array(Kubernetes::Api::V1::HTTPHeader)?

    # Path to access on the HTTP server.
    property path : String?

    # Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME.
    property port : Apimachinery::Util::Intstr::IntOrString

    # Scheme to use for connecting to the host. Defaults to HTTP.
    property scheme : String?

    YAML.mapping({host:         {type: String, nilable: true, key: host, getter: false, setter: false},
                  http_headers: {type: Array(Kubernetes::Api::V1::HTTPHeader), nilable: true, key: httpHeaders, getter: false, setter: false},
                  path:         {type: String, nilable: true, key: path, getter: false, setter: false},
                  port:         {type: Apimachinery::Util::Intstr::IntOrString, nilable: false, key: port, getter: false, setter: false},
                  scheme:       {type: String, nilable: true, key: scheme, getter: false, setter: false}}, true)

    JSON.mapping({host:         {type: String, nilable: true, key: host, getter: false, setter: false},
                  http_headers: {type: Array(Kubernetes::Api::V1::HTTPHeader), nilable: true, key: httpHeaders, getter: false, setter: false},
                  path:         {type: String, nilable: true, key: path, getter: false, setter: false},
                  port:         {type: Apimachinery::Util::Intstr::IntOrString, nilable: false, key: port, getter: false, setter: false},
                  scheme:       {type: String, nilable: true, key: scheme, getter: false, setter: false}}, true)

    def initialize(@host : String? = nil, @http_headers : Array? = nil, @path : String? = nil, @port : Apimachinery::Util::Intstr::IntOrString = nil, @scheme : String? = nil)
    end
  end
end
