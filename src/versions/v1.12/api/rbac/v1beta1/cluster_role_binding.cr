# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace, and adds who information via Subject.
  class Api::Rbac::V1beta1::ClusterRoleBinding
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "rbac.authorization.k8s.io/v1beta1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "ClusterRoleBinding"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "rbac.authorization.k8s.io/v1beta1" && instance.kind == "ClusterRoleBinding"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "rbac.authorization.k8s.io/v1beta1" && instance.kind == "ClusterRoleBinding"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Standard object's metadata.
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # RoleRef can only reference a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
    @[::JSON::Field(key: "roleRef")]
    @[::YAML::Field(key: "roleRef")]
    property role_ref : Api::Rbac::V1beta1::RoleRef

    # Subjects holds references to the objects the role applies to.
    @[::JSON::Field(key: "subjects")]
    @[::YAML::Field(key: "subjects")]
    property subjects : Array(Api::Rbac::V1beta1::Subject) | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @role_ref : Api::Rbac::V1beta1::RoleRef, @subjects : Array | Nil = nil)
    end
  end

  module Resources::Rbac::V1beta1
    alias ClusterRoleBinding = ::Pyrite::Api::Rbac::V1beta1::ClusterRoleBinding
  end
end
