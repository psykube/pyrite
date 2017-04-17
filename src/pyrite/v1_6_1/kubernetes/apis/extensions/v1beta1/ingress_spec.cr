# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# IngressSpec describes the Ingress the user wishes to exist.
class Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressSpec
  # A default backend capable of servicing requests that don't match any rule.At least one of 'backend' or 'rules' must be specified.This field is optional to allow the loadbalancer controller or defaulting logic to specify a global default.
  property backend : ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressBackend

  # A list of host rules used to configure the Ingress.If unspecified, or no rule matches, all traffic is sent to the default backend.
  property rules : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressRule)?

  # TLS configuration.Currently the Ingress only supports a single TLS port, 443.If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
  property tls : Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressTLS)?

  YAML.mapping({backend: {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressBackend, nilable: true, key: backend, getter: false, setter: false},
                rules:   {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressRule), nilable: true, key: rules, getter: false, setter: false},
                tls:     {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressTLS), nilable: true, key: tls, getter: false, setter: false}}, true)

  JSON.mapping({backend: {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressBackend, nilable: true, key: backend, getter: false, setter: false},
                rules:   {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressRule), nilable: true, key: rules, getter: false, setter: false},
                tls:     {type: Array(::Pyrite::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::IngressTLS), nilable: true, key: tls, getter: false, setter: false}}, true)

  def initialize(@backend = nil, @rules = nil, @tls = nil)
  end
end
