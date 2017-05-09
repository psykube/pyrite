# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # Secret holds secret data of a certain type. The total bytes of the values in the Data field must be less than MaxSecretSize bytes.
  class Definitions::V1::Secret
    # Data contains the secret data. Each key must be a valid DNS_SUBDOMAIN or leading dot followed by valid DNS_SUBDOMAIN. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in [https://tools.ietf.org/html/rfc4648#section-4](https://tools.ietf.org/html/rfc4648#section-4)
    property data : Hash(String, String)?

    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # stringData allows specifying non-binary secret data in string form. It is provided as a write-only convenience method. All keys and values are merged into the data field on write, overwriting any existing values. It is never output when reading from the API.
    property string_data : Hash(String, String)?

    # Used to facilitate programmatic handling of secret data.
    property type : String?

    YAML.mapping({data:        {type: Hash(String, String), nilable: true, key: data, getter: false, setter: false},
                  metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  string_data: {type: Hash(String, String), nilable: true, key: stringData, getter: false, setter: false},
                  type:        {type: String, nilable: true, key: type, getter: false, setter: false}}, true)

    JSON.mapping({data:        {type: Hash(String, String), nilable: true, key: data, getter: false, setter: false},
                  metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  string_data: {type: Hash(String, String), nilable: true, key: stringData, getter: false, setter: false},
                  type:        {type: String, nilable: true, key: type, getter: false, setter: false}}, true)

    def initialize(@data : Hash(String, String)? = nil, @metadata : V1::ObjectMeta = nil, @string_data : Hash(String, String)? = nil, @type : String? = nil)
    end
  end
end
