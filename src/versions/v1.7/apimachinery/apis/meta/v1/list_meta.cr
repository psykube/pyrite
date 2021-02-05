# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
  class Apimachinery::Apis::Meta::V1::ListMeta
    include ::JSON::Serializable
    include ::YAML::Serializable

    # String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)
    @[::JSON::Field(key: "resourceVersion")]
    @[::YAML::Field(key: "resourceVersion")]
    property resource_version : String | Nil

    # SelfLink is a URL representing this object. Populated by the system. Read-only.
    @[::JSON::Field(key: "selfLink")]
    @[::YAML::Field(key: "selfLink")]
    property self_link : String | Nil

    def initialize(*, @resource_version : String | Nil = nil, @self_link : String | Nil = nil)
    end
  end
end
