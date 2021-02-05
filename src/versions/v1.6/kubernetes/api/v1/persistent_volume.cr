# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes](http://kubernetes.io/docs/user-guide/persistent-volumes)
  class Kubernetes::Api::V1::PersistentVolume
    include ::JSON::Serializable
    include ::YAML::Serializable

    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String = "v1"

    # The resource kind withing the given apiVersion.
    getter kind : String = "PersistentVolume"
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    @[::JSON::Field(key: "metadata")]
    @[::YAML::Field(key: "metadata")]
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil

    # Spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes](http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes)
    @[::JSON::Field(key: "spec")]
    @[::YAML::Field(key: "spec")]
    property spec : Kubernetes::Api::V1::PersistentVolumeSpec | Nil

    # Status represents the current [information/status for the persistent volume. Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes)
    @[::JSON::Field(key: "status")]
    @[::YAML::Field(key: "status")]
    property status : Kubernetes::Api::V1::PersistentVolumeStatus | Nil

    def initialize(*, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil = nil, @spec : Kubernetes::Api::V1::PersistentVolumeSpec | Nil = nil, @status : Kubernetes::Api::V1::PersistentVolumeStatus | Nil = nil)
    end
  end

  module Resources::V1
    alias PersistentVolume = ::Pyrite::Kubernetes::Api::V1::PersistentVolume
  end
end
