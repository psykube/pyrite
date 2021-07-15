module Pyrite::Kubernetes
  abstract class List(T) < Resource
    # Standard list metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil

    @[::JSON::Field(key: "items")]
    @[::YAML::Field(key: "items")]
    # The API and version we are accessing.
    getter items : Array(T) = [] of T

    def initialize(*, @items : Array(T) = [] of T, @metadata : Apimachinery::Apis::Meta::V1::ListMeta | Nil = nil)
    end

    def self.new(pull : ::JSON::PullParser)
      previous_def(pull).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "List"
          raise ::JSON::ParseException.new("Couldn't parse #{self} from #{pull.read_raw}", *pull.location)
        end
      end
    end

    def self.new(ctx : ::YAML::ParseContext, node : ::YAML::Nodes::Node)
      previous_def(ctx, node).tap do |instance|
        unless instance.api_version == "v1" && instance.kind == "List"
          raise ::YAML::ParseException.new("Couldn't parse #{self}", *node.location)
        end
      end
    end
  end
end
