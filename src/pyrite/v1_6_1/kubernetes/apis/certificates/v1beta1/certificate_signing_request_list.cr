# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  class Definitions::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestList
    property items : Array(Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest)

    property metadata : Apimachinery::Apis::Meta::V1::ListMeta

    YAML.mapping({
      api_version: {type: String, default: "CertificateSigningRequestList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "CertificateSigningRequestList", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1beta1", getter: false, setter: false},
      items:       {type: Array(Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest), nilable: false, key: items, getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @items : Array? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ListMeta = nil)
      @api_version = "certificates/v1beta1"
      @kind = "CertificateSigningRequestList"
    end
  end

  module Resources::Certificates::V1beta1
    include Resource
    alias CertificateSigningRequestList = Definitions::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestList
  end
end
