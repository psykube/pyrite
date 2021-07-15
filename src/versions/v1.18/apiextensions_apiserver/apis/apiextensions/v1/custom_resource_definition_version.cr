# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinitionVersion describes a version for CRD.
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionVersion < Kubernetes::Spec
    # additionalPrinterColumns specifies additional columns returned in Table output. See [https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.](https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.)
    @[::JSON::Field(key: "additionalPrinterColumns")]
    @[::YAML::Field(key: "additionalPrinterColumns")]
    property additional_printer_columns : Array(ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceColumnDefinition) | Nil

    # name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at [`/apis/<group>/<version>/...` if `served` is true.](`/apis/<group>/<version>/...` if `served` is true.)
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
    @[::JSON::Field(key: "schema")]
    @[::YAML::Field(key: "schema")]
    property schema : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation | Nil

    # served is a flag [enabling/disabling this version from being served via REST APIs](enabling/disabling this version from being served via REST APIs)
    @[::JSON::Field(key: "served")]
    @[::YAML::Field(key: "served")]
    property served : Bool

    # storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
    @[::JSON::Field(key: "storage")]
    @[::YAML::Field(key: "storage")]
    property storage : Bool

    # subresources specify what subresources this version of the defined custom resource have.
    @[::JSON::Field(key: "subresources")]
    @[::YAML::Field(key: "subresources")]
    property subresources : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources | Nil

    def initialize(*, @additional_printer_columns : Array | Nil = nil, @name : String, @schema : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceValidation | Nil = nil, @served : Bool, @storage : Bool, @subresources : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceSubresources | Nil = nil)
    end
  end
end
