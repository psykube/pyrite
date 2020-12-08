# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Secret holds secret data of a certain type. The total bytes of the values in the Data field must be less than MaxSecretSize bytes.
  class Api::Core::V1::Secret
    getter api_version : String = "v1"
    getter kind : String = "Secret"
    # Data contains the secret data. Each key must consist of alphanumeric characters, '-', '_' or '.'. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in [https://tools.ietf.org/html/rfc4648#section-4](https://tools.ietf.org/html/rfc4648#section-4)
    property data : Hash(String, String) | Nil

    # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # stringData allows specifying non-binary secret data in string form. It is provided as a write-only convenience method. All keys and values are merged into the data field on write, overwriting any existing values. It is never output when reading from the API.
    property string_data : Hash(String, String) | Nil

    # Used to facilitate programmatic handling of secret data.
    property type : String | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Secret", key: "kind", setter: false},
      data:        {type: Hash(String, String), nilable: true, key: "data", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      string_data: {type: Hash(String, String), nilable: true, key: "stringData", getter: false, setter: false},
      type:        {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Secret", key: "kind", setter: false},
      data:        {type: Hash(String, String), nilable: true, key: "data", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      string_data: {type: Hash(String, String), nilable: true, key: "stringData", getter: false, setter: false},
      type:        {type: String, nilable: true, key: "type", getter: false, setter: false},
    }, true)

    def initialize(*, @data : Hash(String, String) | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @string_data : Hash(String, String) | Nil = nil, @type : String | Nil = nil)
    end

    # create a Secret
    def create(context : String | Nil = nil)
    end

    # list or watch objects of kind Secret
    def self.list(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # delete collection of Secret
    def self.delete(context : String | Nil = nil, continue : String | Nil = nil, field_selector : String | Nil = nil, include_uninitialized : Bool | Nil = nil, label_selector : String | Nil = nil, limit : Int32 | Nil = nil, resource_version : String | Nil = nil, timeout_seconds : Int32 | Nil = nil, watch : Bool | Nil = nil, namespace : String = "default")
    end

    # read the specified Secret
    def self.read(name : String, context : String | Nil = nil, exact : Bool | Nil = nil, export : Bool | Nil = nil, namespace : String = "default")
    end

    # replace the specified Secret
    def replace(context : String | Nil = nil)
    end

    # partially update the specified Secret
    def patch(context : String | Nil = nil)
    end

    # delete a Secret
    def delete(api_version : String | Nil = nil, grace_period_seconds : Int32 | Nil = nil, kind : String | Nil = nil, orphan_dependents : Bool | Nil = nil, preconditions : Apimachinery::Apis::Meta::V1::Preconditions | Nil = nil, propagation_policy : String | Nil = nil, context : String | Nil = nil)
    end
  end

  module Resources::V1
    alias Secret = ::Pyrite::Api::Core::V1::Secret
  end
end
