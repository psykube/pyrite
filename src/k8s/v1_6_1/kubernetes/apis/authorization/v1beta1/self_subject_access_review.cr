require "yaml"
require "json"

# SelfSubjectAccessReview checks whether or the current user can perform an action. Not filling in a spec.namespace means "in all namespaces". Self is a special case, because users should always be able to check whether they can perform an action
class K8S::V1_6_1::Kubernetes::Apis::Authorization::V1beta1::SelfSubjectAccessReview
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec holds information about the request being evaluated. user and groups must be empty
  property spec : ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1beta1::SelfSubjectAccessReviewSpec

  # Status is filled in by the server and indicates whether the request is allowed or not
  property status : ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus

  YAML.mapping({
    api_version: {type: String, default: "SelfSubjectAccessReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1beta1::SelfSubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "SelfSubjectAccessReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1beta1::SelfSubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@spec, @metadata = nil, @status = nil)
    @api_version = "SelfSubjectAccessReview"
    @kind = "v1beta1"
  end

  # create a SelfSubjectAccessReview
  def self.create(spec, metadata = nil, status = nil)
  end
end
