# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_7
  class Definitions::V1alpha1::CertificateSigningRequestStatus
    # If request was approved, the controller will place the issued certificate here.
    property certificate : String?

    # Conditions applied to the request, such as approval or denial.
    property conditions : Array(V1alpha1::CertificateSigningRequestCondition)?

    YAML.mapping({certificate: {type: String, nilable: true, key: certificate, getter: false, setter: false},
                  conditions:  {type: Array(V1alpha1::CertificateSigningRequestCondition), nilable: true, key: conditions, getter: false, setter: false}}, true)

    JSON.mapping({certificate: {type: String, nilable: true, key: certificate, getter: false, setter: false},
                  conditions:  {type: Array(V1alpha1::CertificateSigningRequestCondition), nilable: true, key: conditions, getter: false, setter: false}}, true)

    def initialize(@certificate : String? = nil, @conditions : Array? = nil)
    end
  end
end
