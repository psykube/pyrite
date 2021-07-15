# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Certificates::V1beta1::CertificateSigningRequestStatus < Kubernetes::Spec
    # If request was approved, the controller will place the issued certificate here.
    @[::JSON::Field(key: "certificate")]
    @[::YAML::Field(key: "certificate")]
    property certificate : String | Nil

    # Conditions applied to the request, such as approval or denial.
    @[::JSON::Field(key: "conditions")]
    @[::YAML::Field(key: "conditions")]
    property conditions : Array(Api::Certificates::V1beta1::CertificateSigningRequestCondition) | Nil

    def initialize(*, @certificate : String | Nil = nil, @conditions : Array | Nil = nil)
    end
  end
end
