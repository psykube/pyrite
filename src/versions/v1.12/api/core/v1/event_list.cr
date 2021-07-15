# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # EventList is a list of events.
  class Api::Core::V1::EventList < Kubernetes::List(Api::Core::V1::Event)
  end
end
