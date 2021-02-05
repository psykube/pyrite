# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  class Api::Certificates::V1beta1::CertificateSigningRequestCondition
    include ::JSON::Serializable
    include ::YAML::Serializable

    # timestamp for the last update to this condition
    @[JSON::Field(key: "lastUpdateTime")]
    @[YAML::Field(key: "lastUpdateTime")]
    property last_update_time : Time | Nil

    # human readable message with details about the request state
    @[JSON::Field(key: "message")]
    @[YAML::Field(key: "message")]
    property message : String | Nil

    # brief reason for the request state
    @[JSON::Field(key: "reason")]
    @[YAML::Field(key: "reason")]
    property reason : String | Nil

    # request approval state, currently Approved or Denied.
    @[JSON::Field(key: "type")]
    @[YAML::Field(key: "type")]
    property type : String

    def initialize(*, @last_update_time : Time | Nil = nil, @message : String | Nil = nil, @reason : String | Nil = nil, @type : String)
    end
  end
end
