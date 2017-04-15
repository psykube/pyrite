require "yaml"
require "json"

# SubjectAccessReview checks whether or not a user or group can perform an action.
class K8S::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReview
  property metadata : ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec holds information about the request being evaluated
  property spec : ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec

  # Status is filled in by the server and indicates whether the request is allowed or not
  property status : ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus

  YAML.mapping({
    api_version: {type: String, default: "SubjectAccessReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "SubjectAccessReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_1::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@spec, @metadata = nil, @status = nil)
    @api_version = "SubjectAccessReview"
    @kind = "v1"
  end

  # create a SubjectAccessReview
  def self.create(spec, metadata = nil, status = nil)
  end
end
