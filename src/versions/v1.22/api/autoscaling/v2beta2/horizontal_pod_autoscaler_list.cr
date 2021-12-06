# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # HorizontalPodAutoscalerList is a list of horizontal pod autoscaler objects.
  class Api::Autoscaling::V2beta2::HorizontalPodAutoscalerList < Kubernetes::List(Api::Autoscaling::V2beta2::HorizontalPodAutoscaler)
  end
end
