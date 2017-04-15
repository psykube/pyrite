require "yaml"
require "json"

class K8S::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestList
  property items : Array(::K8S::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest)

  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  YAML.mapping({
    api_version: {type: String, default: "CertificateSigningRequestList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "CertificateSigningRequestList", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    items:       {type: Array(::K8S::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest), nilable: false, key: items, getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
  }, true)

  def initialize(@items, @metadata = nil)
    @api_version = "CertificateSigningRequestList"
    @kind = "v1beta1"
  end

  # list or watch objects of kind CertificateSigningRequest
  def self.get
    Kubernetes.client.get
  end

  # create a CertificateSigningRequest
  def self.create(metadata = nil, spec = nil, status = nil)
  end
end
