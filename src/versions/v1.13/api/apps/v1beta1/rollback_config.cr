# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DEPRECATED.
  class Api::Apps::V1beta1::RollbackConfig < Kubernetes::Spec
    # The revision to rollback to. If set to 0, rollback to the last revision.
    @[::JSON::Field(key: "revision")]
    @[::YAML::Field(key: "revision")]
    property revision : Int32 | Nil

    def initialize(*, @revision : Int32 | Nil = nil)
    end
  end
end
