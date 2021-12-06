require "./object"
require "./object_metadata"

module Pyrite::Kubernetes
  class CustomObject < ::Pyrite::Kubernetes::Resource
    include YAML::Serializable::Unmapped
    include Pyrite::Kubernetes::ObjectMetadata
  end
end
