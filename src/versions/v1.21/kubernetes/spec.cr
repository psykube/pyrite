module Pyrite::Kubernetes
  abstract class Pyrite::Kubernetes::Spec
    include ::JSON::Serializable
    include ::YAML::Serializable
  end
end
