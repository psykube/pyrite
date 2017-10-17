# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PersistentVolumeSpec is the specification of a persistent volume.
  class Api::Core::V1::PersistentVolumeSpec
    # AccessModes contains all ways the volume can be mounted. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes)
    property access_modes : Array(String) | Nil

    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)
    property aws_elastic_block_store : Api::Core::V1::AWSElasticBlockStoreVolumeSource | Nil

    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    property azure_disk : Api::Core::V1::AzureDiskVolumeSource | Nil

    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    property azure_file : Api::Core::V1::AzureFilePersistentVolumeSource | Nil

    # A description of the persistent volume's resources and capacity. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity](https://kubernetes.io/docs/concepts/storage/persistent-volumes#capacity)
    property capacity : Hash(String, String) | Nil

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    property cephfs : Api::Core::V1::CephFSPersistentVolumeSource | Nil

    # Cinder represents a cinder volume attached and mounted on kubelets host machine More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    property cinder : Api::Core::V1::CinderVolumeSource | Nil

    # ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding](https://kubernetes.io/docs/concepts/storage/persistent-volumes#binding)
    property claim_ref : Api::Core::V1::ObjectReference | Nil

    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    property fc : Api::Core::V1::FCVolumeSource | Nil

    # FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.](provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.)
    property flex_volume : Api::Core::V1::FlexVolumeSource | Nil

    # Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running
    property flocker : Api::Core::V1::FlockerVolumeSource | Nil

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)
    property gce_persistent_disk : Api::Core::V1::GCEPersistentDiskVolumeSource | Nil

    # Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md)
    property glusterfs : Api::Core::V1::GlusterfsVolumeSource | Nil

    # HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)
    property host_path : Api::Core::V1::HostPathVolumeSource | Nil

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
    property iscsi : Api::Core::V1::ISCSIVolumeSource | Nil

    # Local represents directly-attached storage with node affinity
    property local : Api::Core::V1::LocalVolumeSource | Nil

    # A list of mount options, e.g. ["ro", "soft"]. Not validated - mount will simply fail if one is invalid. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#mount-options)
    property mount_options : Array(String) | Nil

    # NFS represents an NFS mount on the host. Provisioned by an admin. More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)
    property nfs : Api::Core::V1::NFSVolumeSource | Nil

    # What happens to a persistent volume when released from its claim. Valid options are Retain (default) and Recycle. Recycling must be supported by the volume plugin underlying this persistent volume. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming](https://kubernetes.io/docs/concepts/storage/persistent-volumes#reclaiming)
    property persistent_volume_reclaim_policy : String | Nil

    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    property photon_persistent_disk : Api::Core::V1::PhotonPersistentDiskVolumeSource | Nil

    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    property portworx_volume : Api::Core::V1::PortworxVolumeSource | Nil

    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    property quobyte : Api::Core::V1::QuobyteVolumeSource | Nil

    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md)
    property rbd : Api::Core::V1::RBDVolumeSource | Nil

    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    property scale_io : Api::Core::V1::ScaleIOVolumeSource | Nil

    # Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
    property storage_class_name : String | Nil

    # StorageOS represents a StorageOS volume that is attached to the kubelet's host machine and mounted into the pod More info: [https://releases.k8s.io/HEAD/examples/volumes/storageos/README.md](https://releases.k8s.io/HEAD/examples/volumes/storageos/README.md)
    property storageos : Api::Core::V1::StorageOSPersistentVolumeSource | Nil

    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    property vsphere_volume : Api::Core::V1::VsphereVirtualDiskVolumeSource | Nil

    YAML.mapping({
      access_modes:                     {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
      aws_elastic_block_store:          {type: Api::Core::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: "awsElasticBlockStore", getter: false, setter: false},
      azure_disk:                       {type: Api::Core::V1::AzureDiskVolumeSource, nilable: true, key: "azureDisk", getter: false, setter: false},
      azure_file:                       {type: Api::Core::V1::AzureFilePersistentVolumeSource, nilable: true, key: "azureFile", getter: false, setter: false},
      capacity:                         {type: Hash(String, String), nilable: true, key: "capacity", getter: false, setter: false},
      cephfs:                           {type: Api::Core::V1::CephFSPersistentVolumeSource, nilable: true, key: "cephfs", getter: false, setter: false},
      cinder:                           {type: Api::Core::V1::CinderVolumeSource, nilable: true, key: "cinder", getter: false, setter: false},
      claim_ref:                        {type: Api::Core::V1::ObjectReference, nilable: true, key: "claimRef", getter: false, setter: false},
      fc:                               {type: Api::Core::V1::FCVolumeSource, nilable: true, key: "fc", getter: false, setter: false},
      flex_volume:                      {type: Api::Core::V1::FlexVolumeSource, nilable: true, key: "flexVolume", getter: false, setter: false},
      flocker:                          {type: Api::Core::V1::FlockerVolumeSource, nilable: true, key: "flocker", getter: false, setter: false},
      gce_persistent_disk:              {type: Api::Core::V1::GCEPersistentDiskVolumeSource, nilable: true, key: "gcePersistentDisk", getter: false, setter: false},
      glusterfs:                        {type: Api::Core::V1::GlusterfsVolumeSource, nilable: true, key: "glusterfs", getter: false, setter: false},
      host_path:                        {type: Api::Core::V1::HostPathVolumeSource, nilable: true, key: "hostPath", getter: false, setter: false},
      iscsi:                            {type: Api::Core::V1::ISCSIVolumeSource, nilable: true, key: "iscsi", getter: false, setter: false},
      local:                            {type: Api::Core::V1::LocalVolumeSource, nilable: true, key: "local", getter: false, setter: false},
      mount_options:                    {type: Array(String), nilable: true, key: "mountOptions", getter: false, setter: false},
      nfs:                              {type: Api::Core::V1::NFSVolumeSource, nilable: true, key: "nfs", getter: false, setter: false},
      persistent_volume_reclaim_policy: {type: String, nilable: true, key: "persistentVolumeReclaimPolicy", getter: false, setter: false},
      photon_persistent_disk:           {type: Api::Core::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: "photonPersistentDisk", getter: false, setter: false},
      portworx_volume:                  {type: Api::Core::V1::PortworxVolumeSource, nilable: true, key: "portworxVolume", getter: false, setter: false},
      quobyte:                          {type: Api::Core::V1::QuobyteVolumeSource, nilable: true, key: "quobyte", getter: false, setter: false},
      rbd:                              {type: Api::Core::V1::RBDVolumeSource, nilable: true, key: "rbd", getter: false, setter: false},
      scale_io:                         {type: Api::Core::V1::ScaleIOVolumeSource, nilable: true, key: "scaleIO", getter: false, setter: false},
      storage_class_name:               {type: String, nilable: true, key: "storageClassName", getter: false, setter: false},
      storageos:                        {type: Api::Core::V1::StorageOSPersistentVolumeSource, nilable: true, key: "storageos", getter: false, setter: false},
      vsphere_volume:                   {type: Api::Core::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: "vsphereVolume", getter: false, setter: false},
    }, true)

    JSON.mapping({
      access_modes:                     {type: Array(String), nilable: true, key: "accessModes", getter: false, setter: false},
      aws_elastic_block_store:          {type: Api::Core::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: "awsElasticBlockStore", getter: false, setter: false},
      azure_disk:                       {type: Api::Core::V1::AzureDiskVolumeSource, nilable: true, key: "azureDisk", getter: false, setter: false},
      azure_file:                       {type: Api::Core::V1::AzureFilePersistentVolumeSource, nilable: true, key: "azureFile", getter: false, setter: false},
      capacity:                         {type: Hash(String, String), nilable: true, key: "capacity", getter: false, setter: false},
      cephfs:                           {type: Api::Core::V1::CephFSPersistentVolumeSource, nilable: true, key: "cephfs", getter: false, setter: false},
      cinder:                           {type: Api::Core::V1::CinderVolumeSource, nilable: true, key: "cinder", getter: false, setter: false},
      claim_ref:                        {type: Api::Core::V1::ObjectReference, nilable: true, key: "claimRef", getter: false, setter: false},
      fc:                               {type: Api::Core::V1::FCVolumeSource, nilable: true, key: "fc", getter: false, setter: false},
      flex_volume:                      {type: Api::Core::V1::FlexVolumeSource, nilable: true, key: "flexVolume", getter: false, setter: false},
      flocker:                          {type: Api::Core::V1::FlockerVolumeSource, nilable: true, key: "flocker", getter: false, setter: false},
      gce_persistent_disk:              {type: Api::Core::V1::GCEPersistentDiskVolumeSource, nilable: true, key: "gcePersistentDisk", getter: false, setter: false},
      glusterfs:                        {type: Api::Core::V1::GlusterfsVolumeSource, nilable: true, key: "glusterfs", getter: false, setter: false},
      host_path:                        {type: Api::Core::V1::HostPathVolumeSource, nilable: true, key: "hostPath", getter: false, setter: false},
      iscsi:                            {type: Api::Core::V1::ISCSIVolumeSource, nilable: true, key: "iscsi", getter: false, setter: false},
      local:                            {type: Api::Core::V1::LocalVolumeSource, nilable: true, key: "local", getter: false, setter: false},
      mount_options:                    {type: Array(String), nilable: true, key: "mountOptions", getter: false, setter: false},
      nfs:                              {type: Api::Core::V1::NFSVolumeSource, nilable: true, key: "nfs", getter: false, setter: false},
      persistent_volume_reclaim_policy: {type: String, nilable: true, key: "persistentVolumeReclaimPolicy", getter: false, setter: false},
      photon_persistent_disk:           {type: Api::Core::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: "photonPersistentDisk", getter: false, setter: false},
      portworx_volume:                  {type: Api::Core::V1::PortworxVolumeSource, nilable: true, key: "portworxVolume", getter: false, setter: false},
      quobyte:                          {type: Api::Core::V1::QuobyteVolumeSource, nilable: true, key: "quobyte", getter: false, setter: false},
      rbd:                              {type: Api::Core::V1::RBDVolumeSource, nilable: true, key: "rbd", getter: false, setter: false},
      scale_io:                         {type: Api::Core::V1::ScaleIOVolumeSource, nilable: true, key: "scaleIO", getter: false, setter: false},
      storage_class_name:               {type: String, nilable: true, key: "storageClassName", getter: false, setter: false},
      storageos:                        {type: Api::Core::V1::StorageOSPersistentVolumeSource, nilable: true, key: "storageos", getter: false, setter: false},
      vsphere_volume:                   {type: Api::Core::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: "vsphereVolume", getter: false, setter: false},
    }, true)

    def initialize(*, @access_modes : Array | Nil = nil, @aws_elastic_block_store : Api::Core::V1::AWSElasticBlockStoreVolumeSource | Nil = nil, @azure_disk : Api::Core::V1::AzureDiskVolumeSource | Nil = nil, @azure_file : Api::Core::V1::AzureFilePersistentVolumeSource | Nil = nil, @capacity : Hash(String, String) | Nil = nil, @cephfs : Api::Core::V1::CephFSPersistentVolumeSource | Nil = nil, @cinder : Api::Core::V1::CinderVolumeSource | Nil = nil, @claim_ref : Api::Core::V1::ObjectReference | Nil = nil, @fc : Api::Core::V1::FCVolumeSource | Nil = nil, @flex_volume : Api::Core::V1::FlexVolumeSource | Nil = nil, @flocker : Api::Core::V1::FlockerVolumeSource | Nil = nil, @gce_persistent_disk : Api::Core::V1::GCEPersistentDiskVolumeSource | Nil = nil, @glusterfs : Api::Core::V1::GlusterfsVolumeSource | Nil = nil, @host_path : Api::Core::V1::HostPathVolumeSource | Nil = nil, @iscsi : Api::Core::V1::ISCSIVolumeSource | Nil = nil, @local : Api::Core::V1::LocalVolumeSource | Nil = nil, @mount_options : Array | Nil = nil, @nfs : Api::Core::V1::NFSVolumeSource | Nil = nil, @persistent_volume_reclaim_policy : String | Nil = nil, @photon_persistent_disk : Api::Core::V1::PhotonPersistentDiskVolumeSource | Nil = nil, @portworx_volume : Api::Core::V1::PortworxVolumeSource | Nil = nil, @quobyte : Api::Core::V1::QuobyteVolumeSource | Nil = nil, @rbd : Api::Core::V1::RBDVolumeSource | Nil = nil, @scale_io : Api::Core::V1::ScaleIOVolumeSource | Nil = nil, @storage_class_name : String | Nil = nil, @storageos : Api::Core::V1::StorageOSPersistentVolumeSource | Nil = nil, @vsphere_volume : Api::Core::V1::VsphereVirtualDiskVolumeSource | Nil = nil)
    end
  end
end
