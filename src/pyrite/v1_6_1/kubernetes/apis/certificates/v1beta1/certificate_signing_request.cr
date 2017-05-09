# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # Describes a certificate signing request
  class Definitions::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # The certificate request itself and any additional information.
    property spec : Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec

    # Derived information about the request.
    property status : Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus

    YAML.mapping({
      api_version: {type: String, default: "CertificateSigningRequest", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "CertificateSigningRequest", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec = nil, @status : Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus = nil)
      @api_version = "certificates/v1beta1"
      @kind = "CertificateSigningRequest"
    end
  end

  module Resources::Certificates::V1beta1
    include Resource
    alias CertificateSigningRequest = Definitions::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest
  end
end
