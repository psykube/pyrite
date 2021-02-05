# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CertificateSigningRequest objects provide a mechanism to obtain x509 certificates by submitting a certificate signing request, and having it asynchronously approved and issued.
  #
  # Kubelets use this API to obtain:
  #  1. client certificates to authenticate to kube-apiserver (with the ["kubernetes.io/kube-apiserver-client-kubelet" signerName).]("kubernetes.io/kube-apiserver-client-kubelet" signerName).)
  #  2. serving certificates for TLS endpoints kube-apiserver can connect to securely (with the ["kubernetes.io/kubelet-serving" signerName).]("kubernetes.io/kubelet-serving" signerName).)
  #
  # This API can be used to request client certificates to authenticate to kube-apiserver (with the ["kubernetes.io/kube-apiserver-client" signerName), or to obtain certificates from custom non-Kubernetes signers.]("kubernetes.io/kube-apiserver-client" signerName), or to obtain certificates from custom non-Kubernetes signers.)
  class Api::Certificates::V1::CertificateSigningRequest
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "certificates/v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "CertificateSigningRequest"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "certificates/v1" && instance.kind == "CertificateSigningRequest"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "certificates/v1" && instance.kind == "CertificateSigningRequest"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # spec contains the certificate request, and is immutable after creation. Only the request, signerName, and usages fields can be set on creation. Other fields are derived by Kubernetes and cannot be modified by users.
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Api::Certificates::V1::CertificateSigningRequestSpec

    # status contains information about whether the request is approved or denied, and the certificate issued by the signer, or the failure condition indicating signer failure.
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Api::Certificates::V1::CertificateSigningRequestStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Certificates::V1::CertificateSigningRequestSpec, @status : Api::Certificates::V1::CertificateSigningRequestStatus | Nil = nil)
    end
  end

  module Resources::Certificates::V1
    alias CertificateSigningRequest = ::Pyrite::Api::Certificates::V1::CertificateSigningRequest
  end
end
