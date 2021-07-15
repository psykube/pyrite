# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CertificateSigningRequestList is a collection of CertificateSigningRequest objects
  class Api::Certificates::V1::CertificateSigningRequestList < Kubernetes::List(Api::Certificates::V1::CertificateSigningRequest)
  end
end
