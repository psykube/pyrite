# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ControllerRevisionList is a resource containing a list of ControllerRevision objects.
  class Api::Apps::V1::ControllerRevisionList < Kubernetes::List(Api::Apps::V1::ControllerRevision)
  end
end
