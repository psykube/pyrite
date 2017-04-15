require "yaml"
require "json"

# Describes a certificate signing request
class K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # The certificate request itself and any additional information.
  property spec : ::K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec

  # Derived information about the request.
  property status : ::K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus

  YAML.mapping({
    api_version: {type: String, default: "CertificateSigningRequest", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "CertificateSigningRequest", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "CertificateSigningRequest"
    @kind = "v1beta1"
  end

  # list or watch objects of kind CertificateSigningRequest
  def self.get
    Kubernetes.client.get
  end

  # create a CertificateSigningRequest
  def self.create(metadata = nil, spec = nil, status = nil)
  end

  # read the specified CertificateSigningRequest
  def self.get(name : String)
    Kubernetes.client.get
  end
end
