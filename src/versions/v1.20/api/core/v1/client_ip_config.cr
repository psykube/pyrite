# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClientIPConfig represents the configurations of Client IP based session affinity.
  class Api::Core::V1::ClientIPConfig
    include ::JSON::Serializable
    include ::YAML::Serializable

    # timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
    @[::JSON::Field(key: "timeoutSeconds")]
    @[::YAML::Field(key: "timeoutSeconds")]
    property timeout_seconds : Int32 | Nil

    def initialize(*, @timeout_seconds : Int32 | Nil = nil)
    end
  end
end
