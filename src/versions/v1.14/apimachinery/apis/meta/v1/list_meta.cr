# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
  class Apimachinery::Apis::Meta::V1::ListMeta
    include ::JSON::Serializable
    include ::YAML::Serializable

    # continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a consistent list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response, unless you have received this token from an error message.
    @[JSON::Field(key: "continue")]
    @[YAML::Field(key: "continue")]
    property continue : String | Nil

    # String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/api-conventions.md#concurrency-control-and-consistency)
    @[JSON::Field(key: "resourceVersion")]
    @[YAML::Field(key: "resourceVersion")]
    property resource_version : String | Nil

    # selfLink is a URL representing this object. Populated by the system. Read-only.
    @[JSON::Field(key: "selfLink")]
    @[YAML::Field(key: "selfLink")]
    property self_link : String | Nil

    def initialize(*, @continue : String | Nil = nil, @resource_version : String | Nil = nil, @self_link : String | Nil = nil)
    end
  end
end
