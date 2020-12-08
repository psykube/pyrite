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

    # Requested signer for the request. It is a qualified name in the form: [`scope-hostname.io/name`. If empty, it will be defaulted:](`scope-hostname.io/name`. If empty, it will be defaulted:)
    #  1. If it's a kubelet client certificate, it is assigned
    #     ["kubernetes.io/kube-apiserver-client-kubelet".]("kubernetes.io/kube-apiserver-client-kubelet".)
    #  2. If it's a kubelet serving certificate, it is assigned
    #     ["kubernetes.io/kubelet-serving".]("kubernetes.io/kubelet-serving".)
    #  3. Otherwise, it is assigned ["kubernetes.io/legacy-unknown".]("kubernetes.io/legacy-unknown".)
    # Distribution of trust for signers happens out of band. You can select on this field using `spec.signerName`.
    property signer_name : String | Nil

    # UID information about the requesting user. See user.Info interface for details.
    property uid : String | Nil

    # allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)
    #      [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)
    # Valid values are:
    #  "signing",
    #  "digital signature",
    #  "content commitment",
    #  "key encipherment",
    #  "key agreement",
    #  "data encipherment",
    #  "cert sign",
    #  "crl sign",
    #  "encipher only",
    #  "decipher only",
    #  "any",
    #  "server auth",
    #  "client auth",
    #  "code signing",
    #  "email protection",
    #  ["s/mime",]("s/mime",)
    #  "ipsec end system",
    #  "ipsec tunnel",
    #  "ipsec user",
    #  "timestamping",
    #  "ocsp signing",
    #  "microsoft sgc",
    #  "netscape sgc"
    property usages : Array(String) | Nil

    # Information about the requesting user. See user.Info interface for details.
    property username : String | Nil

    ::YAML.mapping({
      extra:       {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
      groups:      {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
      request:     {type: String, nilable: false, key: "request", getter: false, setter: false},
      signer_name: {type: String, nilable: true, key: "signerName", getter: false, setter: false},
      uid:         {type: String, nilable: true, key: "uid", getter: false, setter: false},
      usages:      {type: Array(String), nilable: true, key: "usages", getter: false, setter: false},
      username:    {type: String, nilable: true, key: "username", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      extra:       {type: Hash(String, String), nilable: true, key: "extra", getter: false, setter: false},
      groups:      {type: Array(String), nilable: true, key: "groups", getter: false, setter: false},
      request:     {type: String, nilable: false, key: "request", getter: false, setter: false},
      signer_name: {type: String, nilable: true, key: "signerName", getter: false, setter: false},
      uid:         {type: String, nilable: true, key: "uid", getter: false, setter: false},
      usages:      {type: Array(String), nilable: true, key: "usages", getter: false, setter: false},
      username:    {type: String, nilable: true, key: "username", getter: false, setter: false},
    }, true)

    def initialize(*, @request : String, @extra : Hash(String, String) | Nil = nil, @groups : Array | Nil = nil, @signer_name : String | Nil = nil, @uid : String | Nil = nil, @usages : Array | Nil = nil, @username : String | Nil = nil)
    end
  end
end
