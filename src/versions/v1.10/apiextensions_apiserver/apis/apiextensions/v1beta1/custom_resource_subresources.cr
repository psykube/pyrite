# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceSubresources defines the status and scale subresources for CustomResources.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Scale denotes the scale subresource for CustomResources
    @[::JSON::Field(key: "scale")]
    @[::YAML::Field(key: "scale")]
    property scale : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale | Nil

    # Status denotes the status subresource for CustomResources
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus | Nil

    def initialize(*, @scale : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale | Nil = nil, @status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus | Nil = nil)
    end
  end
end
