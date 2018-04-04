# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceSubresourceScale defines how to serve the scale subresource for CustomResources.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale
    # LabelSelectorPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Selector. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. Must be set to work with HPA. If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.
    property label_selector_path : String | Nil

    # SpecReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Spec.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .spec. If there is no value under the given path in the CustomResource, the /scale subresource will return an error on GET.
    property spec_replicas_path : String

    # StatusReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. If there is no value under the given path in the CustomResource, the status replica value in the /scale subresource will default to 0.
    property status_replicas_path : String

    ::YAML.mapping({
      label_selector_path:  {type: String, nilable: true, key: "labelSelectorPath", getter: false, setter: false},
      spec_replicas_path:   {type: String, nilable: false, key: "specReplicasPath", getter: false, setter: false},
      status_replicas_path: {type: String, nilable: false, key: "statusReplicasPath", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      label_selector_path:  {type: String, nilable: true, key: "labelSelectorPath", getter: false, setter: false},
      spec_replicas_path:   {type: String, nilable: false, key: "specReplicasPath", getter: false, setter: false},
      status_replicas_path: {type: String, nilable: false, key: "statusReplicasPath", getter: false, setter: false},
    }, true)

    def initialize(*, @label_selector_path : String | Nil = nil, @spec_replicas_path : String | Nil = nil, @status_replicas_path : String | Nil = nil)
    end
  end
end
