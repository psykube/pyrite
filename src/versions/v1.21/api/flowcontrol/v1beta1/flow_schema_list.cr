# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # FlowSchemaList is a list of FlowSchema objects.
  class Api::Flowcontrol::V1beta1::FlowSchemaList < Kubernetes::List(Api::Flowcontrol::V1beta1::FlowSchema)
  end
end
