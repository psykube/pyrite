# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Describes a certificate signing request
class Pyrite::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # The certificate request itself and any additional information.
  property spec : ::Pyrite::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec

  # Derived information about the request.
  property status : ::Pyrite::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus

  YAML.mapping({
    api_version: {type: String, default: "CertificateSigningRequest", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "CertificateSigningRequest", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::Pyrite::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "CertificateSigningRequest"
    @kind = "v1beta1"
  end

  # list or watch objects of kind CertificateSigningRequest
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # create a CertificateSigningRequest
  def self.create(pretty : String?, metadata = nil, spec = nil, status = nil)
  end

  # delete collection of CertificateSigningRequest
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # read the specified CertificateSigningRequest
  def self.get(pretty : String?, exact : Bool?, export : Bool?, name : String)
  end

  # replace the specified CertificateSigningRequest
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end

  # delete a CertificateSigningRequest
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end

  # replace approval of the specified CertificateSigningRequest
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end

  # replace status of the specified CertificateSigningRequest
  def replace(pretty : String?, metadata = nil, spec = nil, status = nil)
  end
end
