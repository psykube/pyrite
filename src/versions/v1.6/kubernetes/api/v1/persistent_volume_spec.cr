# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeSpec is the specification of a persistent volume.
  class Kubernetes::Api::V1::PersistentVolumeSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # AccessModes contains all ways the volume can be mounted. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes](http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes)
    @[::JSON::Field(key: "accessModes")]
    @[::YAML::Field(key: "accessModes")]
    property access_modes : Array(String) | Nil

    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore](http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore)
    @[::JSON::Field(key: "awsElasticBlockStore")]
    @[::YAML::Field(key: "awsElasticBlockStore")]
    property aws_elastic_block_store : Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource | Nil

    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    @[::JSON::Field(key: "azureDisk")]
    @[::YAML::Field(key: "azureDisk")]
    property azure_disk : Kubernetes::Api::V1::AzureDiskVolumeSource | Nil

    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    @[::JSON::Field(key: "azureFile")]
    @[::YAML::Field(key: "azureFile")]
    property azure_file : Kubernetes::Api::V1::AzureFileVolumeSource | Nil

    # A description of the persistent volume's resources and capacity. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#capacity](http://kubernetes.io/docs/user-guide/persistent-volumes#capacity)
    @[::JSON::Field(key: "capacity")]
    @[::YAML::Field(key: "capacity")]
    property capacity : Hash(String, String) | Nil

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    @[::JSON::Field(key: "cephfs")]
    @[::YAML::Field(key: "cephfs")]
    property cephfs : Kubernetes::Api::V1::CephFSVolumeSource | Nil

    # Cinder represents a cinder volume attached and mounted on kubelets host machine More info: [http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    @[::JSON::Field(key: "cinder")]
    @[::YAML::Field(key: "cinder")]
    property cinder : Kubernetes::Api::V1::CinderVolumeSource | Nil

    # ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#binding](http://kubernetes.io/docs/user-guide/persistent-volumes#binding)
    @[::JSON::Field(key: "claimRef")]
    @[::YAML::Field(key: "claimRef")]
    property claim_ref : Kubernetes::Api::V1::ObjectReference | Nil

    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    @[::JSON::Field(key: "fc")]
    @[::YAML::Field(key: "fc")]
    property fc : Kubernetes::Api::V1::FCVolumeSource | Nil

    # FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.](provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.)
    @[::JSON::Field(key: "flexVolume")]
    @[::YAML::Field(key: "flexVolume")]
    property flex_volume : Kubernetes::Api::V1::FlexVolumeSource | Nil

    # Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running
    @[::JSON::Field(key: "flocker")]
    @[::YAML::Field(key: "flocker")]
    property flocker : Kubernetes::Api::V1::FlockerVolumeSource | Nil

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk](http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk)
    @[::JSON::Field(key: "gcePersistentDisk")]
    @[::YAML::Field(key: "gcePersistentDisk")]
    property gce_persistent_disk : Kubernetes::Api::V1::GCEPersistentDiskVolumeSource | Nil

    # Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md](http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md)
    @[::JSON::Field(key: "glusterfs")]
    @[::YAML::Field(key: "glusterfs")]
    property glusterfs : Kubernetes::Api::V1::GlusterfsVolumeSource | Nil

    # HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [http://kubernetes.io/docs/user-guide/volumes#hostpath](http://kubernetes.io/docs/user-guide/volumes#hostpath)
    @[::JSON::Field(key: "hostPath")]
    @[::YAML::Field(key: "hostPath")]
    property host_path : Kubernetes::Api::V1::HostPathVolumeSource | Nil

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
    @[::JSON::Field(key: "iscsi")]
    @[::YAML::Field(key: "iscsi")]
    property iscsi : Kubernetes::Api::V1::ISCSIVolumeSource | Nil

    # NFS represents an NFS mount on the host. Provisioned by an admin. More info: [http://kubernetes.io/docs/user-guide/volumes#nfs](http://kubernetes.io/docs/user-guide/volumes#nfs)
    @[::JSON::Field(key: "nfs")]
    @[::YAML::Field(key: "nfs")]
    property nfs : Kubernetes::Api::V1::NFSVolumeSource | Nil

    # What happens to a persistent volume when released from its claim. Valid options are Retain (default) and Recycle. Recycling must be supported by the volume plugin underlying this persistent volume. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#recycling-policy](http://kubernetes.io/docs/user-guide/persistent-volumes#recycling-policy)
    @[::JSON::Field(key: "persistentVolumeReclaimPolicy")]
    @[::YAML::Field(key: "persistentVolumeReclaimPolicy")]
    property persistent_volume_reclaim_policy : String | Nil

    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    @[::JSON::Field(key: "photonPersistentDisk")]
    @[::YAML::Field(key: "photonPersistentDisk")]
    property photon_persistent_disk : Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource | Nil

    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    @[::JSON::Field(key: "portworxVolume")]
    @[::YAML::Field(key: "portworxVolume")]
    property portworx_volume : Kubernetes::Api::V1::PortworxVolumeSource | Nil

    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    @[::JSON::Field(key: "quobyte")]
    @[::YAML::Field(key: "quobyte")]
    property quobyte : Kubernetes::Api::V1::QuobyteVolumeSource | Nil

    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md)
    @[::JSON::Field(key: "rbd")]
    @[::YAML::Field(key: "rbd")]
    property rbd : Kubernetes::Api::V1::RBDVolumeSource | Nil

    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    @[::JSON::Field(key: "scaleIO")]
    @[::YAML::Field(key: "scaleIO")]
    property scale_io : Kubernetes::Api::V1::ScaleIOVolumeSource | Nil

    # Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
    @[::JSON::Field(key: "storageClassName")]
    @[::YAML::Field(key: "storageClassName")]
    property storage_class_name : String | Nil

    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    @[::JSON::Field(key: "vsphereVolume")]
    @[::YAML::Field(key: "vsphereVolume")]
    property vsphere_volume : Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource | Nil

    def initialize(*, @access_modes : Array | Nil = nil, @aws_elastic_block_store : Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource | Nil = nil, @azure_disk : Kubernetes::Api::V1::AzureDiskVolumeSource | Nil = nil, @azure_file : Kubernetes::Api::V1::AzureFileVolumeSource | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @cephfs : Kubernetes::Api::V1::CephFSVolumeSource | Nil = nil, @cinder : Kubernetes::Api::V1::CinderVolumeSource | Nil = nil, @claim_ref : Kubernetes::Api::V1::ObjectReference | Nil = nil, @fc : Kubernetes::Api::V1::FCVolumeSource | Nil = nil, @flex_volume : Kubernetes::Api::V1::FlexVolumeSource | Nil = nil, @flocker : Kubernetes::Api::V1::FlockerVolumeSource | Nil = nil, @gce_persistent_disk : Kubernetes::Api::V1::GCEPersistentDiskVolumeSource | Nil = nil, @glusterfs : Kubernetes::Api::V1::GlusterfsVolumeSource | Nil = nil, @host_path : Kubernetes::Api::V1::HostPathVolumeSource | Nil = nil, @iscsi : Kubernetes::Api::V1::ISCSIVolumeSource | Nil = nil, @nfs : Kubernetes::Api::V1::NFSVolumeSource | Nil = nil, @persistent_volume_reclaim_policy : String | Nil = nil, @photon_persistent_disk : Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource | Nil = nil, @portworx_volume : Kubernetes::Api::V1::PortworxVolumeSource | Nil = nil, @quobyte : Kubernetes::Api::V1::QuobyteVolumeSource | Nil = nil, @rbd : Kubernetes::Api::V1::RBDVolumeSource | Nil = nil, @scale_io : Kubernetes::Api::V1::ScaleIOVolumeSource | Nil = nil, @storage_class_name : String | Nil = nil, @vsphere_volume : Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource | Nil = nil)
    end
  end
end
