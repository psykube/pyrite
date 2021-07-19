# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace. It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given namespace only have effect in that namespace. Deprecated in v1.17 in favor of [rbac.authorization.k8s.io/v1 RoleBinding, and will no longer be served in v1.20.](rbac.authorization.k8s.io/v1 RoleBinding, and will no longer be served in v1.20.)
  class Api::Rbac::V1beta1::RoleBinding < Kubernetes::Object
    @api_version = "rbac.authorization.k8s.io/v1beta1"
    @kind = "RoleBinding"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "rbac.authorization.k8s.io/v1beta1" && instance.kind == "RoleBinding"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "rbac.authorization.k8s.io/v1beta1" && instance.kind == "RoleBinding"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace. If the RoleRef cannot be resolved, the Authorizer must return an error.
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
end
