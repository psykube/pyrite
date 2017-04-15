require "yaml"
require "json"

# TokenReview attempts to authenticate a token to a known user.Note: TokenReview requests may be cached by the webhook token authenticator plugin in the kube-apiserver.
class K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::TokenReview
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Spec holds information about the request being evaluated
  property spec : ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec

  # Status is filled in by the server and indicates whether the request can be authenticated.
  property status : ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus

  YAML.mapping({
    api_version: {type: String, default: "TokenReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "TokenReview", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    spec:        {type: ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec, nilable: false, key: spec, getter: false, setter: false},
    status:      {type: ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@spec, @metadata = nil, @status = nil)
    @api_version = "TokenReview"
    @kind = "v1beta1"
  end

  # create a TokenReview
  def self.create(spec, metadata = nil, status = nil)
  end
end
