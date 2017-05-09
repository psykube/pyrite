# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # PersistentVolumeSpec is the specification of a persistent volume.
  class Definitions::Kubernetes::Api::V1::PersistentVolumeSpec
    # AccessModes contains all ways the volume can be mounted. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes](http://kubernetes.io/docs/user-guide/persistent-volumes#access-modes)
    property access_modes : Array(String)?

    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore](http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore)
    property aws_elastic_block_store : Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource

    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    property azure_disk : Kubernetes::Api::V1::AzureDiskVolumeSource

    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    property azure_file : Kubernetes::Api::V1::AzureFileVolumeSource

    # A description of the persistent volume's resources and capacity. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#capacity](http://kubernetes.io/docs/user-guide/persistent-volumes#capacity)
    property capacity : Hash(String, String)?

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    property cephfs : Kubernetes::Api::V1::CephFSVolumeSource

    # Cinder represents a cinder volume attached and mounted on kubelets host machine More info: [http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    property cinder : Kubernetes::Api::V1::CinderVolumeSource

    # ClaimRef is part of a bi-directional binding between PersistentVolume and PersistentVolumeClaim. Expected to be non-nil when bound. claim.VolumeName is the authoritative bind between PV and PVC. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#binding](http://kubernetes.io/docs/user-guide/persistent-volumes#binding)
    property claim_ref : Kubernetes::Api::V1::ObjectReference

    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    property fc : Kubernetes::Api::V1::FCVolumeSource

    # FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.](provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.)
    property flex_volume : Kubernetes::Api::V1::FlexVolumeSource

    # Flocker represents a Flocker volume attached to a kubelet's host machine and exposed to the pod for its usage. This depends on the Flocker control service being running
    property flocker : Kubernetes::Api::V1::FlockerVolumeSource

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin. More info: [http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk](http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk)
    property gce_persistent_disk : Kubernetes::Api::V1::GCEPersistentDiskVolumeSource

    # Glusterfs represents a Glusterfs volume that is attached to a host and exposed to the pod. Provisioned by an admin. More info: [http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md](http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md)
    property glusterfs : Kubernetes::Api::V1::GlusterfsVolumeSource

    # HostPath represents a directory on the host. Provisioned by a developer or tester. This is useful for single-node development and testing only! On-host storage is not supported in any way and WILL NOT WORK in a multi-node cluster. More info: [http://kubernetes.io/docs/user-guide/volumes#hostpath](http://kubernetes.io/docs/user-guide/volumes#hostpath)
    property host_path : Kubernetes::Api::V1::HostPathVolumeSource

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. Provisioned by an admin.
    property iscsi : Kubernetes::Api::V1::ISCSIVolumeSource

    # NFS represents an NFS mount on the host. Provisioned by an admin. More info: [http://kubernetes.io/docs/user-guide/volumes#nfs](http://kubernetes.io/docs/user-guide/volumes#nfs)
    property nfs : Kubernetes::Api::V1::NFSVolumeSource

    # What happens to a persistent volume when released from its claim. Valid options are Retain (default) and Recycle. Recycling must be supported by the volume plugin underlying this persistent volume. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#recycling-policy](http://kubernetes.io/docs/user-guide/persistent-volumes#recycling-policy)
    property persistent_volume_reclaim_policy : String?

    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    property photon_persistent_disk : Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource

    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    property portworx_volume : Kubernetes::Api::V1::PortworxVolumeSource

    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    property quobyte : Kubernetes::Api::V1::QuobyteVolumeSource

    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md)
    property rbd : Kubernetes::Api::V1::RBDVolumeSource

    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    property scale_io : Kubernetes::Api::V1::ScaleIOVolumeSource

    # Name of StorageClass to which this persistent volume belongs. Empty value means that this volume does not belong to any StorageClass.
    property storage_class_name : String?

    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    property vsphere_volume : Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource

    YAML.mapping({access_modes:                     {type: Array(String), nilable: true, key: accessModes, getter: false, setter: false},
                  aws_elastic_block_store:          {type: Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: awsElasticBlockStore, getter: false, setter: false},
                  azure_disk:                       {type: Kubernetes::Api::V1::AzureDiskVolumeSource, nilable: true, key: azureDisk, getter: false, setter: false},
                  azure_file:                       {type: Kubernetes::Api::V1::AzureFileVolumeSource, nilable: true, key: azureFile, getter: false, setter: false},
                  capacity:                         {type: Hash(String, String), nilable: true, key: capacity, getter: false, setter: false},
                  cephfs:                           {type: Kubernetes::Api::V1::CephFSVolumeSource, nilable: true, key: cephfs, getter: false, setter: false},
                  cinder:                           {type: Kubernetes::Api::V1::CinderVolumeSource, nilable: true, key: cinder, getter: false, setter: false},
                  claim_ref:                        {type: Kubernetes::Api::V1::ObjectReference, nilable: true, key: claimRef, getter: false, setter: false},
                  fc:                               {type: Kubernetes::Api::V1::FCVolumeSource, nilable: true, key: fc, getter: false, setter: false},
                  flex_volume:                      {type: Kubernetes::Api::V1::FlexVolumeSource, nilable: true, key: flexVolume, getter: false, setter: false},
                  flocker:                          {type: Kubernetes::Api::V1::FlockerVolumeSource, nilable: true, key: flocker, getter: false, setter: false},
                  gce_persistent_disk:              {type: Kubernetes::Api::V1::GCEPersistentDiskVolumeSource, nilable: true, key: gcePersistentDisk, getter: false, setter: false},
                  glusterfs:                        {type: Kubernetes::Api::V1::GlusterfsVolumeSource, nilable: true, key: glusterfs, getter: false, setter: false},
                  host_path:                        {type: Kubernetes::Api::V1::HostPathVolumeSource, nilable: true, key: hostPath, getter: false, setter: false},
                  iscsi:                            {type: Kubernetes::Api::V1::ISCSIVolumeSource, nilable: true, key: iscsi, getter: false, setter: false},
                  nfs:                              {type: Kubernetes::Api::V1::NFSVolumeSource, nilable: true, key: nfs, getter: false, setter: false},
                  persistent_volume_reclaim_policy: {type: String, nilable: true, key: persistentVolumeReclaimPolicy, getter: false, setter: false},
                  photon_persistent_disk:           {type: Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: photonPersistentDisk, getter: false, setter: false},
                  portworx_volume:                  {type: Kubernetes::Api::V1::PortworxVolumeSource, nilable: true, key: portworxVolume, getter: false, setter: false},
                  quobyte:                          {type: Kubernetes::Api::V1::QuobyteVolumeSource, nilable: true, key: quobyte, getter: false, setter: false},
                  rbd:                              {type: Kubernetes::Api::V1::RBDVolumeSource, nilable: true, key: rbd, getter: false, setter: false},
                  scale_io:                         {type: Kubernetes::Api::V1::ScaleIOVolumeSource, nilable: true, key: scaleIO, getter: false, setter: false},
                  storage_class_name:               {type: String, nilable: true, key: storageClassName, getter: false, setter: false},
                  vsphere_volume:                   {type: Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: vsphereVolume, getter: false, setter: false}}, true)

    JSON.mapping({access_modes:                     {type: Array(String), nilable: true, key: accessModes, getter: false, setter: false},
                  aws_elastic_block_store:          {type: Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: awsElasticBlockStore, getter: false, setter: false},
                  azure_disk:                       {type: Kubernetes::Api::V1::AzureDiskVolumeSource, nilable: true, key: azureDisk, getter: false, setter: false},
                  azure_file:                       {type: Kubernetes::Api::V1::AzureFileVolumeSource, nilable: true, key: azureFile, getter: false, setter: false},
                  capacity:                         {type: Hash(String, String), nilable: true, key: capacity, getter: false, setter: false},
                  cephfs:                           {type: Kubernetes::Api::V1::CephFSVolumeSource, nilable: true, key: cephfs, getter: false, setter: false},
                  cinder:                           {type: Kubernetes::Api::V1::CinderVolumeSource, nilable: true, key: cinder, getter: false, setter: false},
                  claim_ref:                        {type: Kubernetes::Api::V1::ObjectReference, nilable: true, key: claimRef, getter: false, setter: false},
                  fc:                               {type: Kubernetes::Api::V1::FCVolumeSource, nilable: true, key: fc, getter: false, setter: false},
                  flex_volume:                      {type: Kubernetes::Api::V1::FlexVolumeSource, nilable: true, key: flexVolume, getter: false, setter: false},
                  flocker:                          {type: Kubernetes::Api::V1::FlockerVolumeSource, nilable: true, key: flocker, getter: false, setter: false},
                  gce_persistent_disk:              {type: Kubernetes::Api::V1::GCEPersistentDiskVolumeSource, nilable: true, key: gcePersistentDisk, getter: false, setter: false},
                  glusterfs:                        {type: Kubernetes::Api::V1::GlusterfsVolumeSource, nilable: true, key: glusterfs, getter: false, setter: false},
                  host_path:                        {type: Kubernetes::Api::V1::HostPathVolumeSource, nilable: true, key: hostPath, getter: false, setter: false},
                  iscsi:                            {type: Kubernetes::Api::V1::ISCSIVolumeSource, nilable: true, key: iscsi, getter: false, setter: false},
                  nfs:                              {type: Kubernetes::Api::V1::NFSVolumeSource, nilable: true, key: nfs, getter: false, setter: false},
                  persistent_volume_reclaim_policy: {type: String, nilable: true, key: persistentVolumeReclaimPolicy, getter: false, setter: false},
                  photon_persistent_disk:           {type: Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: photonPersistentDisk, getter: false, setter: false},
                  portworx_volume:                  {type: Kubernetes::Api::V1::PortworxVolumeSource, nilable: true, key: portworxVolume, getter: false, setter: false},
                  quobyte:                          {type: Kubernetes::Api::V1::QuobyteVolumeSource, nilable: true, key: quobyte, getter: false, setter: false},
                  rbd:                              {type: Kubernetes::Api::V1::RBDVolumeSource, nilable: true, key: rbd, getter: false, setter: false},
                  scale_io:                         {type: Kubernetes::Api::V1::ScaleIOVolumeSource, nilable: true, key: scaleIO, getter: false, setter: false},
                  storage_class_name:               {type: String, nilable: true, key: storageClassName, getter: false, setter: false},
                  vsphere_volume:                   {type: Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: vsphereVolume, getter: false, setter: false}}, true)

    def initialize(@access_modes : Array? = nil, @aws_elastic_block_store : Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource = nil, @azure_disk : Kubernetes::Api::V1::AzureDiskVolumeSource = nil, @azure_file : Kubernetes::Api::V1::AzureFileVolumeSource = nil, @capacity : Hash(String, String)? = nil, @cephfs : Kubernetes::Api::V1::CephFSVolumeSource = nil, @cinder : Kubernetes::Api::V1::CinderVolumeSource = nil, @claim_ref : Kubernetes::Api::V1::ObjectReference = nil, @fc : Kubernetes::Api::V1::FCVolumeSource = nil, @flex_volume : Kubernetes::Api::V1::FlexVolumeSource = nil, @flocker : Kubernetes::Api::V1::FlockerVolumeSource = nil, @gce_persistent_disk : Kubernetes::Api::V1::GCEPersistentDiskVolumeSource = nil, @glusterfs : Kubernetes::Api::V1::GlusterfsVolumeSource = nil, @host_path : Kubernetes::Api::V1::HostPathVolumeSource = nil, @iscsi : Kubernetes::Api::V1::ISCSIVolumeSource = nil, @nfs : Kubernetes::Api::V1::NFSVolumeSource = nil, @persistent_volume_reclaim_policy : String? = nil, @photon_persistent_disk : Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource = nil, @portworx_volume : Kubernetes::Api::V1::PortworxVolumeSource = nil, @quobyte : Kubernetes::Api::V1::QuobyteVolumeSource = nil, @rbd : Kubernetes::Api::V1::RBDVolumeSource = nil, @scale_io : Kubernetes::Api::V1::ScaleIOVolumeSource = nil, @storage_class_name : String? = nil, @vsphere_volume : Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource = nil)
    end
  end
end
