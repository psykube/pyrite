# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets
  class Kubernetes::Api::V1::ServiceAccount
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "ServiceAccount"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "ServiceAccount"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "ServiceAccount"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # AutomountServiceAccountToken indicates whether pods running as this service account should have an API token automatically mounted. Can be overridden at the pod level.
    @[::JSON::Field(key: "automountServiceAccountToken")]
    @[::YAML::Field(key: "automountServiceAccountToken")]
    property automount_service_account_token : Bool | Nil

    # ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [http://kubernetes.io/docs/user-guide/secrets#manually-specifying-an-imagepullsecret](http://kubernetes.io/docs/user-guide/secrets#manually-specifying-an-imagepullsecret)
    @[::JSON::Field(key: "imagePullSecrets")]
    @[::YAML::Field(key: "imagePullSecrets")]
    property image_pull_secrets : Array(Kubernetes::Api::V1::LocalObjectReference) | Nil

    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [http://kubernetes.io/docs/user-guide/secrets](http://kubernetes.io/docs/user-guide/secrets)
    @[::JSON::Field(key: "secrets")]
    @[::YAML::Field(key: "secrets")]
    property secrets : Array(Kubernetes::Api::V1::ObjectReference) | Nil

    def initialize(*, @automount_service_account_token : Bool | Nil = nil, @image_pull_secrets : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @secrets : Array | Nil = nil)
    end
  end

  module Resources::V1
    alias ServiceAccount = ::Pyrite::Kubernetes::Api::V1::ServiceAccount
  end
end
