# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Describes a certificate signing request
  class Api::Certificates::V1beta1::CertificateSigningRequest < Kubernetes::Object
    @api_version = "certificates/v1beta1"
    @kind = "CertificateSigningRequest"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "certificates/v1beta1" && instance.kind == "CertificateSigningRequest"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "certificates/v1beta1" && instance.kind == "CertificateSigningRequest"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # The certificate request itself and any additional information.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Certificates::V1beta1::CertificateSigningRequestSpec | Nil

    # Derived information about the request.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Certificates::V1beta1::CertificateSigningRequestStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Certificates::V1beta1::CertificateSigningRequestSpec | Nil = nil, @status : Api::Certificates::V1beta1::CertificateSigningRequestStatus | Nil = nil)
    end
  end
end
