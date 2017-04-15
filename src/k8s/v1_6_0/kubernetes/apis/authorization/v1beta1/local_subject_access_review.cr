require "yaml"
require "json"

# LocalSubjectAccessReview checks whether or not a user or group can perform an action in a given namespace.Having a namespace scoped resource makes it much easier to grant namespace scoped policy that includes permissions checking.
class K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::LocalSubjectAccessReview
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec holds information about the request being evaluated. spec.namespace must be equal to the namespace you made the request against. If empty, it is defaulted.
  property spec : ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewSpec

  # Status is filled in by the server and indicates whether the request is allowed or not
  property status : ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus

  YAML.mapping({
    api_version: {type: String, default: "LocalSubjectAccessReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "LocalSubjectAccessReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@spec, @metadata = nil, @status = nil)
    @api_version = "LocalSubjectAccessReview"
    @kind = "v1beta1"
  end

  # create a LocalSubjectAccessReview
  def self.create(spec, metadata = nil, status = nil, namespace : String = "default")
  end
end
