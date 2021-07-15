# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeList is the whole list of all Nodes which have been registered with master.
  class Api::Core::V1::NodeList < Kubernetes::List(Api::Core::V1::Node)
  end
end
