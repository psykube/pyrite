# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "$ref")]
    @[::YAML::Field(key: "$ref")]
    property ref : String | Nil

    @[::JSON::Field(key: "$schema")]
    @[::YAML::Field(key: "$schema")]
    property schema : String | Nil

    @[::JSON::Field(key: "additionalItems")]
    @[::YAML::Field(key: "additionalItems")]
    property additional_items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil

    @[::JSON::Field(key: "additionalProperties")]
    @[::YAML::Field(key: "additionalProperties")]
    property additional_properties : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil

    @[::JSON::Field(key: "allOf")]
    @[::YAML::Field(key: "allOf")]
    property all_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

    @[::JSON::Field(key: "anyOf")]
    @[::YAML::Field(key: "anyOf")]
    property any_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

    @[::JSON::Field(key: "default")]
    @[::YAML::Field(key: "default")]
    property default : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil

    @[::JSON::Field(key: "definitions")]
    @[::YAML::Field(key: "definitions")]
    property definitions : Hash(String, String) | Nil

    @[::JSON::Field(key: "dependencies")]
    @[::YAML::Field(key: "dependencies")]
    property dependencies : Hash(String, String) | Nil

    @[::JSON::Field(key: "description")]
    @[::YAML::Field(key: "description")]
    property description : String | Nil

    @[::JSON::Field(key: "enum")]
    @[::YAML::Field(key: "enum")]
    property enum : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON) | Nil

    @[::JSON::Field(key: "example")]
    @[::YAML::Field(key: "example")]
    property example : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil

    @[::JSON::Field(key: "exclusiveMaximum")]
    @[::YAML::Field(key: "exclusiveMaximum")]
    property exclusive_maximum : Bool | Nil

    @[::JSON::Field(key: "exclusiveMinimum")]
    @[::YAML::Field(key: "exclusiveMinimum")]
    property exclusive_minimum : Bool | Nil

    @[::JSON::Field(key: "externalDocs")]
    @[::YAML::Field(key: "externalDocs")]
    property external_docs : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation | Nil

    @[::JSON::Field(key: "format")]
    @[::YAML::Field(key: "format")]
    property format : String | Nil

    @[::JSON::Field(key: "id")]
    @[::YAML::Field(key: "id")]
    property id : String | Nil

    @[::JSON::Field(key: "items")]
    @[::YAML::Field(key: "items")]
    property items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray | Nil

    @[::JSON::Field(key: "maxItems")]
    @[::YAML::Field(key: "maxItems")]
    property max_items : Int32 | Nil

    @[::JSON::Field(key: "maxLength")]
    @[::YAML::Field(key: "maxLength")]
    property max_length : Int32 | Nil

    @[::JSON::Field(key: "maxProperties")]
    @[::YAML::Field(key: "maxProperties")]
    property max_properties : Int32 | Nil

    @[::JSON::Field(key: "maximum")]
    @[::YAML::Field(key: "maximum")]
    property maximum : Int32 | Nil

    @[::JSON::Field(key: "minItems")]
    @[::YAML::Field(key: "minItems")]
    property min_items : Int32 | Nil

    @[::JSON::Field(key: "minLength")]
    @[::YAML::Field(key: "minLength")]
    property min_length : Int32 | Nil

    @[::JSON::Field(key: "minProperties")]
    @[::YAML::Field(key: "minProperties")]
    property min_properties : Int32 | Nil

    @[::JSON::Field(key: "minimum")]
    @[::YAML::Field(key: "minimum")]
    property minimum : Int32 | Nil

    @[::JSON::Field(key: "multipleOf")]
    @[::YAML::Field(key: "multipleOf")]
    property multiple_of : Int32 | Nil

    @[::JSON::Field(key: "not")]
    @[::YAML::Field(key: "not")]
    property not : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil

    @[::JSON::Field(key: "nullable")]
    @[::YAML::Field(key: "nullable")]
    property nullable : Bool | Nil

    @[::JSON::Field(key: "oneOf")]
    @[::YAML::Field(key: "oneOf")]
    property one_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

    @[::JSON::Field(key: "pattern")]
    @[::YAML::Field(key: "pattern")]
    property pattern : String | Nil

    @[::JSON::Field(key: "patternProperties")]
    @[::YAML::Field(key: "patternProperties")]
    property pattern_properties : Hash(String, String) | Nil

    @[::JSON::Field(key: "properties")]
    @[::YAML::Field(key: "properties")]
    property properties : Hash(String, String) | Nil

    @[::JSON::Field(key: "required")]
    @[::YAML::Field(key: "required")]
    property required : Array(String) | Nil

    @[::JSON::Field(key: "title")]
    @[::YAML::Field(key: "title")]
    property title : String | Nil

    @[::JSON::Field(key: "type")]
    @[::YAML::Field(key: "type")]
    property type : String | Nil

    @[::JSON::Field(key: "uniqueItems")]
    @[::YAML::Field(key: "uniqueItems")]
    property unique_items : Bool | Nil

    def initialize(*, @ref : String | Nil = nil, @schema : String | Nil = nil, @additional_items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil = nil, @additional_properties : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil = nil, @all_of : Array | Nil = nil, @any_of : Array | Nil = nil, @default : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil = nil, @definitions : Hash(String, String) | Nil = nil, @dependencies : Hash(String, String) | Nil = nil, @description : String | Nil = nil, @enum : Array | Nil = nil, @example : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil = nil, @exclusive_maximum : Bool | Nil = nil, @exclusive_minimum : Bool | Nil = nil, @external_docs : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation | Nil = nil, @format : String | Nil = nil, @id : String | Nil = nil, @items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray | Nil = nil, @max_items : Int32 | Nil = nil, @max_length : Int32 | Nil = nil, @max_properties : Int32 | Nil = nil, @maximum : Int32 | Nil = nil, @min_items : Int32 | Nil = nil, @min_length : Int32 | Nil = nil, @min_properties : Int32 | Nil = nil, @minimum : Int32 | Nil = nil, @multiple_of : Int32 | Nil = nil, @not : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil = nil, @nullable : Bool | Nil = nil, @one_of : Array | Nil = nil, @pattern : String | Nil = nil, @pattern_properties : Hash(String, String) | Nil = nil, @properties : Hash(String, String) | Nil = nil, @required : Array | Nil = nil, @title : String | Nil = nil, @type : String | Nil = nil, @unique_items : Bool | Nil = nil)
    end
  end
end
