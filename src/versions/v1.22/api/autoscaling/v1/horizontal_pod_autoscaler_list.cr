# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # list of horizontal pod autoscaler objects.
  class Api::Autoscaling::V1::HorizontalPodAutoscalerList < Kubernetes::List(Api::Autoscaling::V1::HorizontalPodAutoscaler)
  end
end
