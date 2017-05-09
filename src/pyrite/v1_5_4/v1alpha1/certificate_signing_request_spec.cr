# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # This information is immutable after the request is created. Only the Request and ExtraInfo fields can be set on creation, other fields are derived by Kubernetes and cannot be modified by users.
  class Definitions::V1alpha1::CertificateSigningRequestSpec
    property groups : Array(String)?

    # Base64-encoded PKCS#10 CSR data
    property request : String

    property uid : String?

    # Information about the requesting user (if relevant) See user.Info interface for details
    property username : String?

    YAML.mapping({groups:   {type: Array(String), nilable: true, key: groups, getter: false, setter: false},
                  request:  {type: String, nilable: false, key: request, getter: false, setter: false},
                  uid:      {type: String, nilable: true, key: uid, getter: false, setter: false},
                  username: {type: String, nilable: true, key: username, getter: false, setter: false}}, true)

    JSON.mapping({groups:   {type: Array(String), nilable: true, key: groups, getter: false, setter: false},
                  request:  {type: String, nilable: false, key: request, getter: false, setter: false},
                  uid:      {type: String, nilable: true, key: uid, getter: false, setter: false},
                  username: {type: String, nilable: true, key: username, getter: false, setter: false}}, true)

    def initialize(@groups : Array? = nil, @request : String? = nil, @uid : String? = nil, @username : String? = nil)
    end
  end
end
