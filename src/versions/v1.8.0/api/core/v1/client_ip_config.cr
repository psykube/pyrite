# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClientIPConfig represents the configurations of Client IP based session affinity.
  class Api::Core::V1::ClientIPConfig
    # timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
    property timeout_seconds : Int32 | Nil

    YAML.mapping({
      timeout_seconds: {type: Int32, nilable: true, key: "timeoutSeconds", getter: false, setter: false},
    }, true)

    JSON.mapping({
      timeout_seconds: {type: Int32, nilable: true, key: "timeoutSeconds", getter: false, setter: false},
    }, true)

    def initialize(*, @timeout_seconds : Int32 | Nil = nil)
    end
  end
end
