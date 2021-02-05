# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Describes a certificate signing request
  class Api::Certificates::V1beta1::CertificateSigningRequest
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "certificates/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "CertificateSigningRequest"
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # The certificate request itself and any additional information.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Certificates::V1beta1::CertificateSigningRequestSpec | Nil

    # Derived information about the request.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Certificates::V1beta1::CertificateSigningRequestStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Certificates::V1beta1::CertificateSigningRequestSpec | Nil = nil, @status : Api::Certificates::V1beta1::CertificateSigningRequestStatus | Nil = nil)
    end
  end

  module Resources::Certificates::V1beta1
    alias CertificateSigningRequest = ::Pyrite::Api::Certificates::V1beta1::CertificateSigningRequest
  end
end
