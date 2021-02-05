# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressSpec describes the Ingress the user wishes to exist.
  class Api::Extensions::V1beta1::IngressSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # A default backend capable of servicing requests that don't match any rule. At least one of 'backend' or 'rules' must be specified. This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
    @[JSON::Field(key: "backend")]
    @[YAML::Field(key: "backend")]
    property backend : Api::Extensions::V1beta1::IngressBackend | Nil

    # A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    @[JSON::Field(key: "rules")]
    @[YAML::Field(key: "rules")]
    property rules : Array(Api::Extensions::V1beta1::IngressRule) | Nil

    # TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    @[JSON::Field(key: "tls")]
    @[YAML::Field(key: "tls")]
    property tls : Array(Api::Extensions::V1beta1::IngressTLS) | Nil

    def initialize(*, @backend : Api::Extensions::V1beta1::IngressBackend | Nil = nil, @rules : Array | Nil = nil, @tls : Array | Nil = nil)
    end
  end
end
