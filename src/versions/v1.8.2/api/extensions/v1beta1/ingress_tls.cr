# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressTLS describes the transport layer security associated with an Ingress.
  class Api::Extensions::V1beta1::IngressTLS
    # Hosts are a list of hosts included in the TLS certificate. The values in this list must match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the loadbalancer controller fulfilling this Ingress, if left unspecified.
    property hosts : Array(String) | Nil

    # SecretName is the name of the secret used to terminate SSL traffic on 443. Field is left optional to allow SSL routing based on SNI hostname alone. If the SNI host in a listener conflicts with the "Host" header field used by an IngressRule, the SNI host is used for termination and value of the Host header is used for routing.
    property secret_name : String | Nil

    YAML.mapping({
      hosts:       {type: Array(String), nilable: true, key: "hosts", getter: false, setter: false},
      secret_name: {type: String, nilable: true, key: "secretName", getter: false, setter: false},
    }, true)

    JSON.mapping({
      hosts:       {type: Array(String), nilable: true, key: "hosts", getter: false, setter: false},
      secret_name: {type: String, nilable: true, key: "secretName", getter: false, setter: false},
    }, true)

    def initialize(*, @hosts : Array | Nil = nil, @secret_name : String | Nil = nil)
    end
  end
end
