# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeList is the whole list of all Nodes which have been registered with master.
  class Kubernetes::Api::V1::NodeList < Kubernetes::List(Kubernetes::Api::V1::Node)
  end
end
