# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus
    # If request was approved, the controller will place the issued certificate here.
    property certificate : String | Nil

    # Conditions applied to the request, such as approval or denial.
    property conditions : Array(Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestCondition) | Nil

    YAML.mapping({
      certificate: {type: String, nilable: true, key: "certificate"},
      conditions:  {type: Array(Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestCondition), nilable: true, key: "conditions"},
    }, true)

    JSON.mapping({
      certificate: {type: String, nilable: true, key: "certificate"},
      conditions:  {type: Array(Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestCondition), nilable: true, key: "conditions"},
    }, true)

    def initialize(*, @certificate : String | Nil = nil, @conditions : Array | Nil = nil)
    end
  end
end
