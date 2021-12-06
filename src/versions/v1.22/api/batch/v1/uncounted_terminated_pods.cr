# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
  class Api::Batch::V1::UncountedTerminatedPods < Kubernetes::Spec
    # Failed holds UIDs of failed Pods.
    @[::JSON::Field(key: "failed")]
    @[::YAML::Field(key: "failed")]
    property failed : Array(String) | Nil

    # Succeeded holds UIDs of succeeded Pods.
    @[::JSON::Field(key: "succeeded")]
    @[::YAML::Field(key: "succeeded")]
    property succeeded : Array(String) | Nil

    def initialize(*, @failed : Array | Nil = nil, @succeeded : Array | Nil = nil)
    end
  end
end
