# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceSubresources defines the status and scale subresources for CustomResources.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresources
    # Scale denotes the scale subresource for CustomResources
    property scale : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale | Nil

    # Status denotes the status subresource for CustomResources
    property status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus | Nil

    ::YAML.mapping({
      scale:  {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale, nilable: true, key: "scale", getter: false, setter: false},
      status: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      scale:  {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale, nilable: true, key: "scale", getter: false, setter: false},
      status: {type: ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus, nilable: true, key: "status", getter: false, setter: false},
    }, true)

    def initialize(*, @scale : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale | Nil = nil, @status : ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceStatus | Nil = nil)
    end
  end
end
