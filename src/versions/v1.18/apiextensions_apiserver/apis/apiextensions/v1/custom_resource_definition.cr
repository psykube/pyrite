# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format <.spec.name>.<.spec.group>.
  class ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinition < Kubernetes::Object
    @api_version = "apiextensions/v1"
    @kind = "CustomResourceDefinition"

    def self.new(pull : ::JSON::PullParser)
      super(pull).tap do |instance|
        unless instance.api_version == "apiextensions/v1" && instance.kind == "CustomResourceDefinition"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      super(ctx, node).tap do |instance|
        unless instance.api_version == "apiextensions/v1" && instance.kind == "CustomResourceDefinition"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end

    # spec describes how the user wants the resources to appear
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec

    # status indicates the actual state of the CustomResourceDefinition
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionSpec, @status : ApiextensionsApiserver::Apis::Apiextensions::V1::CustomResourceDefinitionStatus | Nil = nil)
    end
  end
end
