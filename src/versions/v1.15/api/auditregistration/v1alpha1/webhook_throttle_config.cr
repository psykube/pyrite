# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # WebhookThrottleConfig holds the configuration for throttling events
  class Api::Auditregistration::V1alpha1::WebhookThrottleConfig < Kubernetes::Spec
    # ThrottleBurst is the maximum number of events sent at the same moment default 15 QPS
    @[::JSON::Field(key: "burst")]
    @[::YAML::Field(key: "burst")]
    property burst : Int32 | Nil

    # ThrottleQPS maximum number of batches per second default 10 QPS
    @[::JSON::Field(key: "qps")]
    @[::YAML::Field(key: "qps")]
    property qps : Int32 | Nil

    def initialize(*, @burst : Int32 | Nil = nil, @qps : Int32 | Nil = nil)
    end
  end
end
