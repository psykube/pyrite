# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  # Describes a certificate signing request
  class Definitions::V1alpha1::CertificateSigningRequest
    property metadata : V1::ObjectMeta

    # The certificate request itself and any additional information.
    property spec : V1alpha1::CertificateSigningRequestSpec

    # Derived information about the request.
    property status : V1alpha1::CertificateSigningRequestStatus

    YAML.mapping({
      api_version: {type: String, default: "CertificateSigningRequest", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1alpha1::CertificateSigningRequestSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1alpha1::CertificateSigningRequestStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "CertificateSigningRequest", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1alpha1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1alpha1::CertificateSigningRequestSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1alpha1::CertificateSigningRequestStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1alpha1::CertificateSigningRequestSpec = nil, @status : V1alpha1::CertificateSigningRequestStatus = nil)
      @api_version = "v1alpha1"
      @kind = "CertificateSigningRequest"
    end
  end

  module Resources::V1alpha1
    include Resource
    alias CertificateSigningRequest = Definitions::V1alpha1::CertificateSigningRequest
  end
end
