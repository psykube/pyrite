# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Secret holds secret data of a certain type.The total bytes of the values in the Data field must be less than MaxSecretSize bytes.
class Pyrite::V1_6_0::Kubernetes::Api::V1::Secret
  # Data contains the secret data.Each key must be a valid DNS_SUBDOMAIN or leading dot followed by valid DNS_SUBDOMAIN.The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here.Described in https://tools.ietf.org/html/rfc4648#section-4
  property data : Hash(String, String)?

  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # stringData allows specifying non-binary secret data in string form.It is provided as a write-only convenience method.All keys and values are merged into the data field on write, overwriting any existing values.It is never output when reading from the API.
  property string_data : Hash(String, String)?

  # Used to facilitate programmatic handling of secret data.
  property type : String?

  YAML.mapping({
    api_version: {type: String, default: "Secret", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    data:        {type: Hash(String, String), nilable: true, key: data, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    string_data: {type: Hash(String, String), nilable: true, key: stringData, getter: false, setter: false},
    type:        {type: String, nilable: true, key: type, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Secret", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    data:        {type: Hash(String, String), nilable: true, key: data, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    string_data: {type: Hash(String, String), nilable: true, key: stringData, getter: false, setter: false},
    type:        {type: String, nilable: true, key: type, getter: false, setter: false},
  }, true)

  def initialize(@data = nil, @metadata = nil, @string_data = nil, @type = nil)
    @api_version = "Secret"
    @kind = "v1"
  end

  # list or watch objects of kind Secret
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # create a Secret
  def self.create(pretty : String?, data = nil, metadata = nil, string_data = nil, type = nil, namespace : String = "default")
  end

  # delete collection of Secret
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?, namespace : String = "default")
  end

  # read the specified Secret
  def self.get(pretty : String?, exact : Bool?, export : Bool?, name : String, namespace : String = "default")
  end

  # replace the specified Secret
  def replace(pretty : String?, data = nil, metadata = nil, string_data = nil, type = nil)
  end

  # delete a Secret
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
