# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionVersion describes a version for CRD.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceDefinitionVersion
    include ::JSON::Serializable
    include ::YAML::Serializable

    # AdditionalPrinterColumns are additional columns shown e.g. in kubectl next to the name. Defaults to a created-at column. Top-level and per-version columns are mutually exclusive. Per-version columns must not all be set to identical values (top-level columns should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature. NOTE: CRDs created prior to 1.13 populated the top-level additionalPrinterColumns field by default. To apply an update that changes to per-version additionalPrinterColumns, the top-level additionalPrinterColumns field must be explicitly set to null
    @[JSON::Field(key: "additionalPrinterColumns")]
    @[YAML::Field(key: "additionalPrinterColumns")]
    property additional_printer_columns : Array(ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceColumnDefinition) | Nil

    # Name is the version name, e.g. “v1”, “v2beta1”, etc.
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String

    # Schema describes the schema for CustomResource used in validation, pruning, and defaulting. Top-level and per-version schemas are mutually exclusive. Per-version schemas must not all be set to identical values (top-level validation schema should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    @[JSON::Field(key: "schema")]
    @[YAML::Field(key: "schema")]
    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil

    # Served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)
    @[JSON::Field(key: "served")]
    @[YAML::Field(key: "served")]
    property served : Bool

    # Storage flags the version as storage version. There must be exactly one flagged as storage version.
    @[JSON::Field(key: "storage")]
    @[YAML::Field(key: "storage")]
    property storage : Bool

    # Subresources describes the subresources for CustomResource Top-level and per-version subresources are mutually exclusive. Per-version subresources must not all be set to identical values (top-level subresources should be used instead) This field is alpha-level and is only honored by servers that enable the CustomResourceWebhookConversion feature.
    @[JSON::Field(key: "subresources")]
    @[YAML::Field(key: "subresources")]
    property subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil

    def initialize(*, @additional_printer_columns : Array | Nil = nil, @name : String, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceValidation | Nil = nil, @served : Bool, @storage : Bool, @subresources : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources | Nil = nil)
    end
  end
end
