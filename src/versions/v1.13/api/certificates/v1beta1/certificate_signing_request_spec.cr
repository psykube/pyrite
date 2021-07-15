# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # This information is immutable after the request is created. Only the Request and Usages fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.
  class Api::Certificates::V1beta1::CertificateSigningRequestSpec < Kubernetes::Spec
    # Extra information about the requesting user. See user.Info interface for details.
    @[::JSON::Field(key: "extra")]
    @[::YAML::Field(key: "extra")]
    property extra : Hash(String, String) | Nil

    # Group information about the requesting user. See user.Info interface for details.
    @[::JSON::Field(key: "groups")]
    @[::YAML::Field(key: "groups")]
    property groups : Array(String) | Nil

    # Base64-encoded PKCS#10 CSR data
    @[::JSON::Field(key: "request")]
    @[::YAML::Field(key: "request")]
    property request : String

    # UID information about the requesting user. See user.Info interface for details.
    @[::JSON::Field(key: "uid")]
    @[::YAML::Field(key: "uid")]
    property uid : String | Nil

    # allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)
    #      [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)
    @[::JSON::Field(key: "usages")]
    @[::YAML::Field(key: "usages")]
    property usages : Array(String) | Nil

    # Information about the requesting user. See user.Info interface for details.
    @[::JSON::Field(key: "username")]
    @[::YAML::Field(key: "username")]
    property username : String | Nil

    def initialize(*, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @request : String, @uid : String | Nil = nil, @usages : Array | Nil = nil, @username : String | Nil = nil)
    end
  end
end
