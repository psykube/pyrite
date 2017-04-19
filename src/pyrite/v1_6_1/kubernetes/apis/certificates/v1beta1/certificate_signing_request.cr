# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Describes a certificate signing request
class Pyrite::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # The certificate request itself and any additional information.
  property spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec

  # Derived information about the request.
  property status : ::Pyrite::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus

  YAML.mapping({
    api_version: {type: String, default: "CertificateSigningRequest", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "CertificateSigningRequest", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : ::Pyrite::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec = nil, @status : ::Pyrite::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus = nil)
    @api_version = "CertificateSigningRequest"
    @kind = "v1beta1"
  end

  # create a CertificateSigningRequest
  def create(context : String? = nil)
  end

  # list or watch objects of kind CertificateSigningRequest
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # delete collection of CertificateSigningRequest
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # read the specified CertificateSigningRequest
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil)
  end

  # replace the specified CertificateSigningRequest
  def replace(context : String? = nil)
  end

  # partially update the specified CertificateSigningRequest
  def patch(context : String? = nil)
  end

  # delete a CertificateSigningRequest
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end

  # replace approval of the specified CertificateSigningRequest
  def replace_approval(context : String? = nil)
  end

  # replace status of the specified CertificateSigningRequest
  def replace_status(context : String? = nil)
  end
end
