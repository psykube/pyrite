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

    ::YAML.mapping({
      api_version: {type: String, default: "certificates/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CertificateSigningRequest", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "certificates/v1beta1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "CertificateSigningRequest", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: "spec", getter: false, setter: false},
      status:      {type: Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec | Nil = nil, @status : Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus | Nil = nil)
    end

    # create a CertificateSigningRequest
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind CertificateSigningRequest
    def self.list(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # delete collection of CertificateSigningRequest
    def self.delete(context : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil)
    end

    # read the specified CertificateSigningRequest
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil)
    end

    # replace the specified CertificateSigningRequest
    def replace(context : String | Nil = nil)
    end

    # partially update the specified CertificateSigningRequest
    def patch(context : String | Nil = nil)
    end

    # delete a CertificateSigningRequest
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end

    # replace approval of the specified CertificateSigningRequest
    def replace_approval(context : String | Nil = nil)
    end

    # replace status of the specified CertificateSigningRequest
    def replace_status(context : String | Nil = nil)
    end
  end

  module Resources::Certificates::V1beta1
    alias CertificateSigningRequest = ::Pyrite::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest
  end
end
