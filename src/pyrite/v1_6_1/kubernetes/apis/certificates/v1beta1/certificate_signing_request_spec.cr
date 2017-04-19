# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# This information is immutable after the request is created. Only the Request and Usages fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.
class Pyrite::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec
  # Extra information about the requesting user. See user.Info interface for details.
  property extra : Hash(String, String)?

  # Group information about the requesting user. See user.Info interface for details.
  property groups : Array(String)?

  # Base64-encoded PKCS#10 CSR data
  property request : String

  # UID information about the requesting user. See user.Info interface for details.
  property uid : String?

  # allowedUsages specifies a set of usage contexts the key will be valid for. See: [https://tools.ietf.org/html/rfc5280#section-4.2.1.3](https://tools.ietf.org/html/rfc5280#section-4.2.1.3)
  #      [https://tools.ietf.org/html/rfc5280#section-4.2.1.12](https://tools.ietf.org/html/rfc5280#section-4.2.1.12)
  property usages : Array(String)?

  # Information about the requesting user. See user.Info interface for details.
  property username : String?

  YAML.mapping({extra:    {type: Hash(String, String), nilable: true, key: extra, getter: false, setter: false},
                groups:   {type: Array(String), nilable: true, key: groups, getter: false, setter: false},
                request:  {type: String, nilable: false, key: request, getter: false, setter: false},
                uid:      {type: String, nilable: true, key: uid, getter: false, setter: false},
                usages:   {type: Array(String), nilable: true, key: usages, getter: false, setter: false},
                username: {type: String, nilable: true, key: username, getter: false, setter: false}}, true)

  JSON.mapping({extra:    {type: Hash(String, String), nilable: true, key: extra, getter: false, setter: false},
                groups:   {type: Array(String), nilable: true, key: groups, getter: false, setter: false},
                request:  {type: String, nilable: false, key: request, getter: false, setter: false},
                uid:      {type: String, nilable: true, key: uid, getter: false, setter: false},
                usages:   {type: Array(String), nilable: true, key: usages, getter: false, setter: false},
                username: {type: String, nilable: true, key: username, getter: false, setter: false}}, true)

  def initialize(@extra : Hash(String, String)? = nil, @groups : Array? = nil, @request : String? = nil, @uid : String? = nil, @usages : Array? = nil, @username : String? = nil)
  end
end
