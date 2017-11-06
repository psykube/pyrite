# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
# JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).
class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps
property $ref : String | Nil

property $schema : String | Nil

property additional_items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil

property additional_properties : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil

property all_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

property any_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

property default : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil

property definitions : Hash(String, String) | Nil

property dependencies : Hash(String, String) | Nil

property description : String | Nil

property enum : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON) | Nil

property example : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil

property exclusive_maximum : Bool | Nil

property exclusive_minimum : Bool | Nil

property external_docs : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation | Nil

property format : String | Nil

property id : String | Nil

property items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray | Nil

property max_items : Int32 | Nil

property max_length : Int32 | Nil

property max_properties : Int32 | Nil

property maximum : Number | Nil

property min_items : Int32 | Nil

property min_length : Int32 | Nil

property min_properties : Int32 | Nil

property minimum : Number | Nil

property multiple_of : Number | Nil

property not : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil

property one_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps) | Nil

property pattern : String | Nil

property pattern_properties : Hash(String, String) | Nil

property properties : Hash(String, String) | Nil

property required : Array(String) | Nil

property title : String | Nil

property type : String | Nil

property unique_items : Bool | Nil

YAML.mapping({ 
$ref: { type: String, nilable: true, key: "$ref", getter: false, setter: false },
$schema: { type: String, nilable: true, key: "$schema", getter: false, setter: false },
additional_items: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool, nilable: true, key: "additionalItems", getter: false, setter: false },
additional_properties: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool, nilable: true, key: "additionalProperties", getter: false, setter: false },
all_of: { type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "allOf", getter: false, setter: false },
any_of: { type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "anyOf", getter: false, setter: false },
default: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON, nilable: true, key: "default", getter: false, setter: false },
definitions: { type: Hash(String, String), nilable: true, key: "definitions", getter: false, setter: false },
dependencies: { type: Hash(String, String), nilable: true, key: "dependencies", getter: false, setter: false },
description: { type: String, nilable: true, key: "description", getter: false, setter: false },
enum: { type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON), nilable: true, key: "enum", getter: false, setter: false },
example: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON, nilable: true, key: "example", getter: false, setter: false },
exclusive_maximum: { type: Bool, nilable: true, key: "exclusiveMaximum", getter: false, setter: false },
exclusive_minimum: { type: Bool, nilable: true, key: "exclusiveMinimum", getter: false, setter: false },
external_docs: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation, nilable: true, key: "externalDocs", getter: false, setter: false },
format: { type: String, nilable: true, key: "format", getter: false, setter: false },
id: { type: String, nilable: true, key: "id", getter: false, setter: false },
items: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray, nilable: true, key: "items", getter: false, setter: false },
max_items: { type: Int32, nilable: true, key: "maxItems", getter: false, setter: false },
max_length: { type: Int32, nilable: true, key: "maxLength", getter: false, setter: false },
max_properties: { type: Int32, nilable: true, key: "maxProperties", getter: false, setter: false },
maximum: { type: Number, nilable: true, key: "maximum", getter: false, setter: false },
min_items: { type: Int32, nilable: true, key: "minItems", getter: false, setter: false },
min_length: { type: Int32, nilable: true, key: "minLength", getter: false, setter: false },
min_properties: { type: Int32, nilable: true, key: "minProperties", getter: false, setter: false },
minimum: { type: Number, nilable: true, key: "minimum", getter: false, setter: false },
multiple_of: { type: Number, nilable: true, key: "multipleOf", getter: false, setter: false },
not: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: true, key: "not", getter: false, setter: false },
one_of: { type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "oneOf", getter: false, setter: false },
pattern: { type: String, nilable: true, key: "pattern", getter: false, setter: false },
pattern_properties: { type: Hash(String, String), nilable: true, key: "patternProperties", getter: false, setter: false },
properties: { type: Hash(String, String), nilable: true, key: "properties", getter: false, setter: false },
required: { type: Array(String), nilable: true, key: "required", getter: false, setter: false },
title: { type: String, nilable: true, key: "title", getter: false, setter: false },
type: { type: String, nilable: true, key: "type", getter: false, setter: false },
unique_items: { type: Bool, nilable: true, key: "uniqueItems", getter: false, setter: false }
}, true)

JSON.mapping({ 
$ref: { type: String, nilable: true, key: "$ref", getter: false, setter: false },
$schema: { type: String, nilable: true, key: "$schema", getter: false, setter: false },
additional_items: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool, nilable: true, key: "additionalItems", getter: false, setter: false },
additional_properties: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool, nilable: true, key: "additionalProperties", getter: false, setter: false },
all_of: { type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "allOf", getter: false, setter: false },
any_of: { type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "anyOf", getter: false, setter: false },
default: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON, nilable: true, key: "default", getter: false, setter: false },
definitions: { type: Hash(String, String), nilable: true, key: "definitions", getter: false, setter: false },
dependencies: { type: Hash(String, String), nilable: true, key: "dependencies", getter: false, setter: false },
description: { type: String, nilable: true, key: "description", getter: false, setter: false },
enum: { type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON), nilable: true, key: "enum", getter: false, setter: false },
example: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON, nilable: true, key: "example", getter: false, setter: false },
exclusive_maximum: { type: Bool, nilable: true, key: "exclusiveMaximum", getter: false, setter: false },
exclusive_minimum: { type: Bool, nilable: true, key: "exclusiveMinimum", getter: false, setter: false },
external_docs: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation, nilable: true, key: "externalDocs", getter: false, setter: false },
format: { type: String, nilable: true, key: "format", getter: false, setter: false },
id: { type: String, nilable: true, key: "id", getter: false, setter: false },
items: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray, nilable: true, key: "items", getter: false, setter: false },
max_items: { type: Int32, nilable: true, key: "maxItems", getter: false, setter: false },
max_length: { type: Int32, nilable: true, key: "maxLength", getter: false, setter: false },
max_properties: { type: Int32, nilable: true, key: "maxProperties", getter: false, setter: false },
maximum: { type: Number, nilable: true, key: "maximum", getter: false, setter: false },
min_items: { type: Int32, nilable: true, key: "minItems", getter: false, setter: false },
min_length: { type: Int32, nilable: true, key: "minLength", getter: false, setter: false },
min_properties: { type: Int32, nilable: true, key: "minProperties", getter: false, setter: false },
minimum: { type: Number, nilable: true, key: "minimum", getter: false, setter: false },
multiple_of: { type: Number, nilable: true, key: "multipleOf", getter: false, setter: false },
not: { type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps, nilable: true, key: "not", getter: false, setter: false },
one_of: { type: Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps), nilable: true, key: "oneOf", getter: false, setter: false },
pattern: { type: String, nilable: true, key: "pattern", getter: false, setter: false },
pattern_properties: { type: Hash(String, String), nilable: true, key: "patternProperties", getter: false, setter: false },
properties: { type: Hash(String, String), nilable: true, key: "properties", getter: false, setter: false },
required: { type: Array(String), nilable: true, key: "required", getter: false, setter: false },
title: { type: String, nilable: true, key: "title", getter: false, setter: false },
type: { type: String, nilable: true, key: "type", getter: false, setter: false },
unique_items: { type: Bool, nilable: true, key: "uniqueItems", getter: false, setter: false }
}, true)

def initialize(*, @$ref : String | Nil = nil, @$schema : String | Nil = nil, @additional_items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil = nil, @additional_properties : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrBool | Nil = nil, @all_of : Array | Nil = nil, @any_of : Array | Nil = nil, @default : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil = nil, @definitions : Hash(String, String) | Nil = nil, @dependencies : Hash(String, String) | Nil = nil, @description : String | Nil = nil, @enum : Array | Nil = nil, @example : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSON | Nil = nil, @exclusive_maximum : Bool | Nil = nil, @exclusive_minimum : Bool | Nil = nil, @external_docs : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::ExternalDocumentation | Nil = nil, @format : String | Nil = nil, @id : String | Nil = nil, @items : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaPropsOrArray | Nil = nil, @max_items : Int32 | Nil = nil, @max_length : Int32 | Nil = nil, @max_properties : Int32 | Nil = nil, @maximum : Number | Nil = nil, @min_items : Int32 | Nil = nil, @min_length : Int32 | Nil = nil, @min_properties : Int32 | Nil = nil, @minimum : Number | Nil = nil, @multiple_of : Number | Nil = nil, @not : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::JSONSchemaProps | Nil = nil, @one_of : Array | Nil = nil, @pattern : String | Nil = nil, @pattern_properties : Hash(String, String) | Nil = nil, @properties : Hash(String, String) | Nil = nil, @required : Array | Nil = nil, @title : String | Nil = nil, @type : String | Nil = nil, @unique_items : Bool | Nil = nil)
end

end

end

