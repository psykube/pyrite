# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ExternalAdmissionHookConfiguration describes the configuration of initializers.
  class Api::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration < Kubernetes::Object
    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "admissionregistration/v1alpha1" && instance.kind == "ExternalAdmissionHookConfiguration"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "admissionregistration/v1alpha1" && instance.kind == "ExternalAdmissionHookConfiguration"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # ExternalAdmissionHooks is a list of external admission webhooks and the affected resources and operations.
    @[::JSON::Field(key: "externalAdmissionHooks")]
    @[::YAML::Field(key: "externalAdmissionHooks")]
    property external_admission_hooks : Array(Api::Admissionregistration::V1alpha1::ExternalAdmissionHook) | Nil

    def initialize(*, @external_admission_hooks : Array | Nil = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil)
    end
  end
end
