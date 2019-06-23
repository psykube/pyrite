# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Lease defines a lease concept.
  class Api::Coordination::V1::Lease
    getter api_version : String = "coordination/v1"
    getter kind : String = "Lease"
    # More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Specification of the Lease. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status](https://git.k8s.io/community/contributors/devel/api-conventions.md#spec-and-status)
    property spec : Api::Coordination::V1::LeaseSpec | Nil

    ::YAML.mapping({
      api_version: {type: String, default: "coordination/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Lease", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Coordination::V1::LeaseSpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version: {type: String, default: "coordination/v1", key: "apiVersion", setter: false},
      kind:        {type: String, default: "Lease", key: "kind", setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: "metadata", getter: false, setter: false},
      spec:        {type: Api::Coordination::V1::LeaseSpec, nilable: true, key: "spec", getter: false, setter: false},
    }, true)

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Api::Coordination::V1::LeaseSpec | Nil = nil)
    end
  end

  module Resources::Coordination::V1
    alias Lease = ::Pyrite::Api::Coordination::V1::Lease
  end
end
