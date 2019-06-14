# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # WebhookThrottleConfig holds the configuration for throttling events
  class Api::Auditregistration::V1alpha1::WebhookThrottleConfig
    # ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS
    property burst : Int32 | Nil

    # ThrottleQPS maximum number of batches per second default 10 QPS
    property qps : Int32 | Nil

    ::YAML.mapping({
      burst: {type: Int32, nilable: true, key: "burst", getter: false, setter: false},
      qps:   {type: Int32, nilable: true, key: "qps", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      burst: {type: Int32, nilable: true, key: "burst", getter: false, setter: false},
      qps:   {type: Int32, nilable: true, key: "qps", getter: false, setter: false},
    }, true)

    def initialize(*, @burst : Int32 | Nil = nil, @qps : Int32 | Nil = nil)
    end
  end
end
