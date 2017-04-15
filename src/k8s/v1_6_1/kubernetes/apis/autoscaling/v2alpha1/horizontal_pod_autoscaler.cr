require "yaml"
require "json"

# HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically manages the replica count of any resource implementing the scale subresource based on the metrics specified.
class K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscaler
  # metadata is the standard object metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # spec is the specification for the behaviour of the autoscaler.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status.
  property spec : ::K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec

  # status is the current information about the autoscaler.
  property status : ::K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus

  YAML.mapping({
    api_version: {type: String, default: "HorizontalPodAutoscaler", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "HorizontalPodAutoscaler", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec, nilable: true, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@metadata = nil, @spec = nil, @status = nil)
    @api_version = "HorizontalPodAutoscaler"
    @kind = "v2alpha1"
  end

  # list or watch objects of kind HorizontalPodAutoscaler
  def self.get(namespace : String = "default")
    Kubernetes.client.get
  end

  # create a HorizontalPodAutoscaler
  def self.create(metadata = nil, spec = nil, status = nil, namespace : String = "default")
  end

  # read the specified HorizontalPodAutoscaler
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end

  # read status of the specified HorizontalPodAutoscaler
  def self.get(name : String, namespace : String = "default")
    Kubernetes.client.get
  end
end
