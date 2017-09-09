# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Describes a certificate signing request
  class Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest
    getter api_version : String = "certificates/v1beta1"
    getter kind : String = "CertificateSigningRequest"
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # The certificate request itself and any additional information.
    property spec : Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec | Nil

    # Derived information about the request.
    property status : Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus | Nil

    YAML.mapping({
      api_version: {type: String, default: "certificates/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CertificateSigningRequest", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: "status"},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "certificates/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CertificateSigningRequest", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata"},
      spec:        {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: "spec"},
      status:      {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: "status"},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec | Nil = nil, @status : Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus | Nil = nil)
    end
  end

  module Resources::Certificates::V1beta1
    alias CertificateSigningRequest = Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest
  end
end
