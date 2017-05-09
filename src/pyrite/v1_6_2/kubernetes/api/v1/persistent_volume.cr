# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # PersistentVolume (PV) is a storage resource provisioned by an administrator. It is analogous to a node. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes](http://kubernetes.io/docs/user-guide/persistent-volumes)
  class Definitions::Kubernetes::Api::V1::PersistentVolume
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta

    # Spec defines a specification of a persistent volume owned by the cluster. Provisioned by an administrator. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes](http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes)
    property spec : Kubernetes::Api::V1::PersistentVolumeSpec

    # Status represents the current [information/status for the persistent volume. Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes](information/status for the persistent volume. Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistent-volumes)
    property status : Kubernetes::Api::V1::PersistentVolumeStatus

    YAML.mapping({
      api_version: {type: String, default: "PersistentVolume", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::PersistentVolumeSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::PersistentVolumeStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "PersistentVolume", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: Kubernetes::Api::V1::PersistentVolumeSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: Kubernetes::Api::V1::PersistentVolumeStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @spec : Kubernetes::Api::V1::PersistentVolumeSpec = nil, @status : Kubernetes::Api::V1::PersistentVolumeStatus = nil)
      @api_version = "v1"
      @kind = "PersistentVolume"
    end
  end

  module Resources::V1
    include Resource
    alias PersistentVolume = Definitions::Kubernetes::Api::V1::PersistentVolume
  end
end
