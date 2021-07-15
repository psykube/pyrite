# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
  class Kubernetes::Apis::Apps::V1beta1::RollingUpdateStatefulSetStrategy < Kubernetes::Spec
    # Partition indicates the ordinal at which the StatefulSet should be partitioned.
    @[::JSON::Field(key: "partition")]
    @[::YAML::Field(key: "partition")]
    property partition : Int32 | Nil

    def initialize(*, @partition : Int32 | Nil = nil)
    end
  end
end
