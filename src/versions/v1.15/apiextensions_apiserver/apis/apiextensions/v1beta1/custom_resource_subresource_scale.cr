# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceSubresourceScale defines how to serve the scale subresource for CustomResources.
  class ApiextensionsApiserver::Apis::Apiextensions::V1beta1::CustomResourceSubresourceScale
    include ::JSON::Serializable
    include ::YAML::Serializable

    # LabelSelectorPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Selector. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status or .spec. Must be set to work with HPA. The field pointed by this JSON path must be a string field (not a complex selector struct) which contains a serialized label selector in string form. More info: [https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.](https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource If there is no value under the given path in the CustomResource, the status label selector value in the /scale subresource will default to the empty string.)
    @[JSON::Field(key: "labelSelectorPath")]
    @[YAML::Field(key: "labelSelectorPath")]
    property label_selector_path : String | Nil

    # SpecReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Spec.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .spec. If there is no value under the given path in the CustomResource, the /scale subresource will return an error on GET.
    @[JSON::Field(key: "specReplicasPath")]
    @[YAML::Field(key: "specReplicasPath")]
    property spec_replicas_path : String

    # StatusReplicasPath defines the JSON path inside of a CustomResource that corresponds to Scale.Status.Replicas. Only JSON paths without the array notation are allowed. Must be a JSON Path under .status. If there is no value under the given path in the CustomResource, the status replica value in the /scale subresource will default to 0.
    @[JSON::Field(key: "statusReplicasPath")]
    @[YAML::Field(key: "statusReplicasPath")]
    property status_replicas_path : String

    def initialize(*, @label_selector_path : String | Nil = nil, @spec_replicas_path : String, @status_replicas_path : String)
    end
  end
end
