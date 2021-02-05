# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).
  class ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps
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
    property additional_items : ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaPropsOrBool | Nil

    @[::JSON::Field(key: "additionalProperties")]
    @[::YAML::Field(key: "additionalProperties")]
    property additional_properties : ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaPropsOrBool | Nil

    @[::JSON::Field(key: "allOf")]
    @[::YAML::Field(key: "allOf")]
    property all_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps) | Nil

    @[::JSON::Field(key: "anyOf")]
    @[::YAML::Field(key: "anyOf")]
    property any_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps) | Nil

    # default is a default value for undefined object fields. Defaulting is a beta feature under the CustomResourceDefaulting feature gate. Defaulting requires spec.preserveUnknownFields to be false.
    @[::JSON::Field(key: "default")]
    @[::YAML::Field(key: "default")]
    property default : ApiextensionsApiserver::Apis::Apiextensions::V1::JSON | Nil

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
    property enum : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::JSON) | Nil

    @[::JSON::Field(key: "example")]
    @[::YAML::Field(key: "example")]
    property example : ApiextensionsApiserver::Apis::Apiextensions::V1::JSON | Nil

    @[::JSON::Field(key: "exclusiveMaximum")]
    @[::YAML::Field(key: "exclusiveMaximum")]
    property exclusive_maximum : Bool | Nil

    @[::JSON::Field(key: "exclusiveMinimum")]
    @[::YAML::Field(key: "exclusiveMinimum")]
    property exclusive_minimum : Bool | Nil

    @[::JSON::Field(key: "externalDocs")]
    @[::YAML::Field(key: "externalDocs")]
    property external_docs : ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation | Nil

    @[::JSON::Field(key: "format")]
    @[::YAML::Field(key: "format")]
    property format : String | Nil

    @[::JSON::Field(key: "id")]
    @[::YAML::Field(key: "id")]
    property id : String | Nil

    @[::JSON::Field(key: "items")]
    @[::YAML::Field(key: "items")]
    property items : ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaPropsOrArray | Nil

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
    property not : ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps | Nil

    @[::JSON::Field(key: "nullable")]
    @[::YAML::Field(key: "nullable")]
    property nullable : Bool | Nil

    @[::JSON::Field(key: "oneOf")]
    @[::YAML::Field(key: "oneOf")]
    property one_of : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps) | Nil

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

    # x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to further restrict the embedded object. kind, apiVersion and metadata are validated automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not have to be if the object is fully specified (up to kind, apiVersion, metadata).
    @[::JSON::Field(key: "x-kubernetes-embedded-resource")]
    @[::YAML::Field(key: "x-kubernetes-embedded-resource")]
    property x_kubernetes_embedded_resource : Bool | Nil

    # x-kubernetes-int-or-string specifies that this value is either an integer or a string. If this is true, an empty type is allowed and type as child of anyOf is permitted if following one of the following patterns:
    #
    # 1) anyOf:
    #    - type: integer
    #    - type: string
    # 2) allOf:
    #    - anyOf:
    #      - type: integer
    #      - type: string
    #    - ... zero or more
    @[::JSON::Field(key: "x-kubernetes-int-or-string")]
    @[::YAML::Field(key: "x-kubernetes-int-or-string")]
    property x_kubernetes_int_or_string : Bool | Nil

    # x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used as the index of the map.
    #
    # This tag MUST only be used on lists that have the "x-kubernetes-list-type" extension set to "map". Also, the values specified for this attribute must be a scalar typed field of the child structure (no nesting is supported).
    @[::JSON::Field(key: "x-kubernetes-list-map-keys")]
    @[::YAML::Field(key: "x-kubernetes-list-map-keys")]
    property x_kubernetes_list_map_keys : Array(String) | Nil

    # x-kubernetes-list-type annotates an array to further describe its topology. This extension must only be used on lists and may have 3 possible values:
    #
    # 1) `atomic`: the list is treated as a single entity, like a scalar.
    #      Atomic lists will be entirely replaced when updated. This extension
    #      may be used on any type of list (struct, scalar, ...).
    # 2) `set`:
    #      Sets are lists that must not have multiple items with the same value. Each
    #      value must be a scalar, an object with x-kubernetes-map-type `atomic` or an
    #      array with x-kubernetes-list-type `atomic`.
    # 3) `map`:
    #      These lists are like maps in that their elements have a non-index key
    #      used to identify them. Order is preserved upon merge. The map tag
    #      must only be used on a list with elements of type object.
    # Defaults to atomic for arrays.
    @[::JSON::Field(key: "x-kubernetes-list-type")]
    @[::YAML::Field(key: "x-kubernetes-list-type")]
    property x_kubernetes_list_type : String | Nil

    # x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning fields which are not specified in the validation schema. This affects fields recursively, but switches back to normal pruning behaviour if nested properties or additionalProperties are specified in the schema. This can either be true or undefined. False is forbidden.
    @[::JSON::Field(key: "x-kubernetes-preserve-unknown-fields")]
    @[::YAML::Field(key: "x-kubernetes-preserve-unknown-fields")]
    property x_kubernetes_preserve_unknown_fields : Bool | Nil

    def initialize(*, @ref : String | Nil = nil, @schema : String | Nil = nil, @additional_items : ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaPropsOrBool | Nil = nil, @additional_properties : ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaPropsOrBool | Nil = nil, @all_of : Array | Nil = nil, @any_of : Array | Nil = nil, @default : ApiextensionsApiserver::Apis::Apiextensions::V1::JSON | Nil = nil, @definitions : Hash(String, String) | Nil = nil, @dependencies : Hash(String, String) | Nil = nil, @description : String | Nil = nil, @enum : Array | Nil = nil, @example : ApiextensionsApiserver::Apis::Apiextensions::V1::JSON | Nil = nil, @exclusive_maximum : Bool | Nil = nil, @exclusive_minimum : Bool | Nil = nil, @external_docs : ApiextensionsApiserver::Apis::Apiextensions::V1::ExternalDocumentation | Nil = nil, @format : String | Nil = nil, @id : String | Nil = nil, @items : ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaPropsOrArray | Nil = nil, @max_items : Int32 | Nil = nil, @max_length : Int32 | Nil = nil, @max_properties : Int32 | Nil = nil, @maximum : Int32 | Nil = nil, @min_items : Int32 | Nil = nil, @min_length : Int32 | Nil = nil, @min_properties : Int32 | Nil = nil, @minimum : Int32 | Nil = nil, @multiple_of : Int32 | Nil = nil, @not : ApiextensionsApiserver::Apis::Apiextensions::V1::JSONSchemaProps | Nil = nil, @nullable : Bool | Nil = nil, @one_of : Array | Nil = nil, @pattern : String | Nil = nil, @pattern_properties : Hash(String, String) | Nil = nil, @properties : Hash(String, String) | Nil = nil, @required : Array | Nil = nil, @title : String | Nil = nil, @type : String | Nil = nil, @unique_items : Bool | Nil = nil, @x_kubernetes_embedded_resource : Bool | Nil = nil, @x_kubernetes_int_or_string : Bool | Nil = nil, @x_kubernetes_list_map_keys : Array | Nil = nil, @x_kubernetes_list_type : String | Nil = nil, @x_kubernetes_preserve_unknown_fields : Bool | Nil = nil)
    end
  end
end
