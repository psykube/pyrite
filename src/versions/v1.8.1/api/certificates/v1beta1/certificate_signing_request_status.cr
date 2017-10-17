# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Certificates::V1beta1::CertificateSigningRequestStatus
    # If request was approved, the controller will place the issued certificate here.
    property certificate : String | Nil

    # Conditions applied to the request, such as approval or denial.
    property conditions : Array(Api::Certificates::V1beta1::CertificateSigningRequestCondition) | Nil

    YAML.mapping({
      certificate: {type: String, nilable: true, key: "certificate", getter: false, setter: false},
      conditions:  {type: Array(Api::Certificates::V1beta1::CertificateSigningRequestCondition), nilable: true, key: "conditions", getter: false, setter: false},
    }, true)

    JSON.mapping({
      certificate: {type: String, nilable: true, key: "certificate", getter: false, setter: false},
      conditions:  {type: Array(Api::Certificates::V1beta1::CertificateSigningRequestCondition), nilable: true, key: "conditions", getter: false, setter: false},
    }, true)

    def initialize(*, @certificate : String | Nil = nil, @conditions : Array | Nil = nil)
    end
  end
end
