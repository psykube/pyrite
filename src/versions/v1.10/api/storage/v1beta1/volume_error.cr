# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeError captures an error encountered during a volume operation.
  class Api::Storage::V1beta1::VolumeError
    include ::JSON::Serializable
    include ::YAML::Serializable

    # String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.
    @[JSON::Field(key: "message")]
    @[YAML::Field(key: "message")]
    property message : String | Nil

    # Time the error was encountered.
    @[JSON::Field(key: "time")]
    @[YAML::Field(key: "time")]
    property time : Time | Nil

    def initialize(*, @message : String | Nil = nil, @time : Time | Nil = nil)
    end
  end
end
