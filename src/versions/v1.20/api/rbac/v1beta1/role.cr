# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding. Deprecated in v1.17 in favor of [rbac.authorization.k8s.io/v1 Role, and will no longer be served in v1.22.](rbac.authorization.k8s.io/v1 Role, and will no longer be served in v1.22.)
  class Api::Rbac::V1beta1::Role < Kubernetes::Object
    @api_version = "rbac.authorization.k8s.io/v1beta1"
    @kind = "Role"

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "rbac.authorization.k8s.io/v1beta1" && instance.kind == "Role"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "rbac.authorization.k8s.io/v1beta1" && instance.kind == "Role"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # Rules holds all the PolicyRules for this Role
    @[::JSON::Field(key: "rules")]
    @[::YAML::Field(key: "rules")]
    property rules : Array(Api::Rbac::V1beta1::PolicyRule) | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @rules : Array | Nil = nil)
    end
  end
end
