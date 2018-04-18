# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # This information is immutable after the request is created. Only the Request and Usages fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.
  class Api::Certificates::V1beta1::CertificateSigningRequestSpec
    # Extra information about the requesting user. See user.Info interface for details.
    property extra : Hash(String, String) | Nil

    # Group information about the requesting user. See user.Info interface for details.
    property groups : Array(String) | Nil

    # Base64-encoded PKCS#10 CSR data
    property request : String

    # UID information about the requesting user. See user.Info interface for details.
    property uid : String | Nil

    # allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)
    #      [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)
    property usages : Array(String) | Nil

    # Information about the requesting user. See user.Info interface for details.
    property username : String | Nil

    ::YAML.mapping({
      extra:    {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
      groups:   {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
      request:  {type: String, nilable: false, key: "request", getter: false, setter: false},
      uid:      {type: String, nilable: true, key: "uid", getter: false, setter: false},
      usages:   {type: Array(String), nilable: true, key: "usages", getter: false, setter: false},
      username: {type: String, nilable: true, key: "username", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      extra:    {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
      groups:   {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
      request:  {type: String, nilable: false, key: "request", getter: false, setter: false},
      uid:      {type: String, nilable: true, key: "uid", getter: false, setter: false},
      usages:   {type: Array(String), nilable: true, key: "usages", getter: false, setter: false},
      username: {type: String, nilable: true, key: "username", getter: false, setter: false},
    }, true)

    def initialize(*, @request : String, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @uid : String | Nil = nil, @usages : Array | Nil = nil, @username : String | Nil = nil)
    end
  end
end
