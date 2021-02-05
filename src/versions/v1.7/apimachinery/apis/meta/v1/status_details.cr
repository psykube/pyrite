# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
  class Apimachinery::Apis::Meta::V1::StatusDetails
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
    @[JSON::Field(key: "causes")]
    @[YAML::Field(key: "causes")]
    property causes : Array(Apimachinery::Apis::Meta::V1::StatusCause) | Nil

    # The group attribute of the resource associated with the status StatusReason.
    @[JSON::Field(key: "group")]
    @[YAML::Field(key: "group")]
    property group : String | Nil

    # The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: [https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds)
    @[JSON::Field(key: "kind")]
    @[YAML::Field(key: "kind")]
    property kind : String | Nil

    # The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    # If specified, the time in seconds before the operation should be retried.
    @[JSON::Field(key: "retryAfterSeconds")]
    @[YAML::Field(key: "retryAfterSeconds")]
    property retry_after_seconds : Int32 | Nil

    # UID of the resource. (when there is a single resource which can be described). More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)
    @[JSON::Field(key: "uid")]
    @[YAML::Field(key: "uid")]
    property uid : String | Nil

    def initialize(*, @causes : Array | Nil = nil, @group : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @retry_after_seconds : Int32 | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
