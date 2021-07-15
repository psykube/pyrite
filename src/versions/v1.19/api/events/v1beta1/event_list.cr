# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventList is a list of Event objects.
  class Api::Events::V1beta1::EventList < Kubernetes::List(Api::Events::V1beta1::Event)
  end
end
