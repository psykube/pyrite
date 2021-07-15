# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceSubresourceStatus defines how to serve the status subresource for CustomResources. Status is represented by the `.status` JSON path inside of a CustomResource. When set, * exposes a /status subresource for the custom resource * PUT requests to the /status subresource take a custom resource object, and ignore changes to anything except the status stanza * [PUT/POST/PATCH requests to the custom resource ignore changes to the status stanza](PUT/POST/PATCH requests to the custom resource ignore changes to the status stanza)
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus < Kubernetes::Spec
    def initialize
    end
  end
end
