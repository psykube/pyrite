# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PriorityClassList is a collection of priority classes.
  class Api::Scheduling::V1::PriorityClassList < Kubernetes::List(Api::Scheduling::V1::PriorityClass)
  end
end
