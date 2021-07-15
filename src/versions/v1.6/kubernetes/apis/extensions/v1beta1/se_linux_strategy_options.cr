# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SELinux  Strategy Options defines the strategy type and any options used to create the strategy.
  class Kubernetes::Apis::Extensions::V1beta1::SELinuxStrategyOptions < Kubernetes::Spec
    # type is the strategy that will dictate the allowable labels that may be set.
    @[::JSON::Field(key: "rule")]
    @[::YAML::Field(key: "rule")]
    property rule : String

    # seLinuxOptions required to run as; required for MustRunAs More info: [http://releases.k8s.io/HEAD/docs/design/security_context.md#security-context](http://releases.k8s.io/HEAD/docs/design/security_context.md#security-context)
    @[::JSON::Field(key: "seLinuxOptions")]
    @[::YAML::Field(key: "seLinuxOptions")]
    property se_linux_options : Kubernetes::Api::V1::SELinuxOptions | Nil

    def initialize(*, @rule : String, @se_linux_options : Kubernetes::Api::V1::SELinuxOptions | Nil = nil)
    end
  end
end
