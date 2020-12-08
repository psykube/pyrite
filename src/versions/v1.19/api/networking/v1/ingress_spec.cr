# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IngressSpec describes the Ingress the user wishes to exist.
  class Api::Networking::V1::IngressSpec
    # DefaultBackend is the backend that should handle requests that don't match any rule. If Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set, the handling of requests that do not match any of the rules will be up to the Ingress controller.
    property default_backend : Api::Networking::V1::IngressBackend | Nil

    # IngressClassName is the name of the IngressClass cluster resource. The associated IngressClass defines which controller will implement the resource. This replaces the deprecated [`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.](`kubernetes.io/ingress.class` annotation. For backwards compatibility, when that annotation is set, it must be given precedence over this field. The controller may emit a warning if the field and annotation have different values. Implementations of this API should ignore Ingresses without a class specified. An IngressClass resource may be marked as default, which can be used to set a default value for this field. For more information, refer to the IngressClass documentation.)
    property ingress_class_name : String | Nil

    # A list of host rules used to configure the Ingress. If unspecified, or no rule matches, all traffic is sent to the default backend.
    property rules : Array(Api::Networking::V1::IngressRule) | Nil

    # TLS configuration. Currently the Ingress only supports a single TLS port, 443. If multiple members of this list specify different hosts, they will be multiplexed on the same port according to the hostname specified through the SNI TLS extension, if the ingress controller fulfilling the ingress supports SNI.
    property tls : Array(Api::Networking::V1::IngressTLS) | Nil

    ::YAML.mapping({
      default_backend:    {type: Api::Networking::V1::IngressBackend, nilable: true, key: "defaultBackend", getter: false, setter: false},
      ingress_class_name: {type: String, nilable: true, key: "ingressClassName", getter: false, setter: false},
      rules:              {type: Array(Api::Networking::V1::IngressRule), nilable: true, key: "rules", getter: false, setter: false},
      tls:                {type: Array(Api::Networking::V1::IngressTLS), nilable: true, key: "tls", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      default_backend:    {type: Api::Networking::V1::IngressBackend, nilable: true, key: "defaultBackend", getter: false, setter: false},
      ingress_class_name: {type: String, nilable: true, key: "ingressClassName", getter: false, setter: false},
      rules:              {type: Array(Api::Networking::V1::IngressRule), nilable: true, key: "rules", getter: false, setter: false},
      tls:                {type: Array(Api::Networking::V1::IngressTLS), nilable: true, key: "tls", getter: false, setter: false},
    }, true)

    def initialize(*, @default_backend : Api::Networking::V1::IngressBackend | Nil = nil, @ingress_class_name : String | Nil = nil, @rules : Array | Nil = nil, @tls : Array | Nil = nil)
    end
  end
end
