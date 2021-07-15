# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # DaemonSetList is a collection of daemon sets.
  class Api::Apps::V1beta2::DaemonSetList < Kubernetes::List(Api::Apps::V1beta2::DaemonSet)
  end
end
