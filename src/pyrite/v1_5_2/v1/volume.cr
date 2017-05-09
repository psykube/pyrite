# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_2
  # Volume represents a named volume in a pod that may be accessed by any container in the pod.
  class Definitions::V1::Volume
    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore](http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore)
    property aws_elastic_block_store : V1::AWSElasticBlockStoreVolumeSource

    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    property azure_disk : V1::AzureDiskVolumeSource

    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    property azure_file : V1::AzureFileVolumeSource

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    property cephfs : V1::CephFSVolumeSource

    # Cinder represents a cinder volume attached and mounted on kubelets host machine More info: [http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    property cinder : V1::CinderVolumeSource

    # ConfigMap represents a configMap that should populate this volume
    property config_map : V1::ConfigMapVolumeSource

    # DownwardAPI represents downward API about the pod that should populate this volume
    property downward_api : V1::DownwardAPIVolumeSource

    # EmptyDir represents a temporary directory that shares a pod's lifetime. More info: [http://kubernetes.io/docs/user-guide/volumes#emptydir](http://kubernetes.io/docs/user-guide/volumes#emptydir)
    property empty_dir : V1::EmptyDirVolumeSource

    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    property fc : V1::FCVolumeSource

    # FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.](provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.)
    property flex_volume : V1::FlexVolumeSource

    # Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running
    property flocker : V1::FlockerVolumeSource

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk](http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk)
    property gce_persistent_disk : V1::GCEPersistentDiskVolumeSource

    # GitRepo represents a git repository at a particular revision.
    property git_repo : V1::GitRepoVolumeSource

    # Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: [http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md](http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md)
    property glusterfs : V1::GlusterfsVolumeSource

    # HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: [http://kubernetes.io/docs/user-guide/volumes#hostpath](http://kubernetes.io/docs/user-guide/volumes#hostpath)
    property host_path : V1::HostPathVolumeSource

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [http://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md](http://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md)
    property iscsi : V1::ISCSIVolumeSource

    # Volume's name. Must be a DNS_LABEL and unique within the pod. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    # NFS represents an NFS mount on the host that shares a pod's lifetime More info: [http://kubernetes.io/docs/user-guide/volumes#nfs](http://kubernetes.io/docs/user-guide/volumes#nfs)
    property nfs : V1::NFSVolumeSource

    # PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims](http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims)
    property persistent_volume_claim : V1::PersistentVolumeClaimVolumeSource

    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    property photon_persistent_disk : V1::PhotonPersistentDiskVolumeSource

    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    property quobyte : V1::QuobyteVolumeSource

    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md)
    property rbd : V1::RBDVolumeSource

    # Secret represents a secret that should populate this volume. More info: [http://kubernetes.io/docs/user-guide/volumes#secrets](http://kubernetes.io/docs/user-guide/volumes#secrets)
    property secret : V1::SecretVolumeSource

    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    property vsphere_volume : V1::VsphereVirtualDiskVolumeSource

    YAML.mapping({aws_elastic_block_store: {type: V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: awsElasticBlockStore, getter: false, setter: false},
                  azure_disk:              {type: V1::AzureDiskVolumeSource, nilable: true, key: azureDisk, getter: false, setter: false},
                  azure_file:              {type: V1::AzureFileVolumeSource, nilable: true, key: azureFile, getter: false, setter: false},
                  cephfs:                  {type: V1::CephFSVolumeSource, nilable: true, key: cephfs, getter: false, setter: false},
                  cinder:                  {type: V1::CinderVolumeSource, nilable: true, key: cinder, getter: false, setter: false},
                  config_map:              {type: V1::ConfigMapVolumeSource, nilable: true, key: configMap, getter: false, setter: false},
                  downward_api:            {type: V1::DownwardAPIVolumeSource, nilable: true, key: downwardAPI, getter: false, setter: false},
                  empty_dir:               {type: V1::EmptyDirVolumeSource, nilable: true, key: emptyDir, getter: false, setter: false},
                  fc:                      {type: V1::FCVolumeSource, nilable: true, key: fc, getter: false, setter: false},
                  flex_volume:             {type: V1::FlexVolumeSource, nilable: true, key: flexVolume, getter: false, setter: false},
                  flocker:                 {type: V1::FlockerVolumeSource, nilable: true, key: flocker, getter: false, setter: false},
                  gce_persistent_disk:     {type: V1::GCEPersistentDiskVolumeSource, nilable: true, key: gcePersistentDisk, getter: false, setter: false},
                  git_repo:                {type: V1::GitRepoVolumeSource, nilable: true, key: gitRepo, getter: false, setter: false},
                  glusterfs:               {type: V1::GlusterfsVolumeSource, nilable: true, key: glusterfs, getter: false, setter: false},
                  host_path:               {type: V1::HostPathVolumeSource, nilable: true, key: hostPath, getter: false, setter: false},
                  iscsi:                   {type: V1::ISCSIVolumeSource, nilable: true, key: iscsi, getter: false, setter: false},
                  name:                    {type: String, nilable: false, key: name, getter: false, setter: false},
                  nfs:                     {type: V1::NFSVolumeSource, nilable: true, key: nfs, getter: false, setter: false},
                  persistent_volume_claim: {type: V1::PersistentVolumeClaimVolumeSource, nilable: true, key: persistentVolumeClaim, getter: false, setter: false},
                  photon_persistent_disk:  {type: V1::PhotonPersistentDiskVolumeSource, nilable: true, key: photonPersistentDisk, getter: false, setter: false},
                  quobyte:                 {type: V1::QuobyteVolumeSource, nilable: true, key: quobyte, getter: false, setter: false},
                  rbd:                     {type: V1::RBDVolumeSource, nilable: true, key: rbd, getter: false, setter: false},
                  secret:                  {type: V1::SecretVolumeSource, nilable: true, key: secret, getter: false, setter: false},
                  vsphere_volume:          {type: V1::VsphereVirtualDiskVolumeSource, nilable: true, key: vsphereVolume, getter: false, setter: false}}, true)

    JSON.mapping({aws_elastic_block_store: {type: V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: awsElasticBlockStore, getter: false, setter: false},
                  azure_disk:              {type: V1::AzureDiskVolumeSource, nilable: true, key: azureDisk, getter: false, setter: false},
                  azure_file:              {type: V1::AzureFileVolumeSource, nilable: true, key: azureFile, getter: false, setter: false},
                  cephfs:                  {type: V1::CephFSVolumeSource, nilable: true, key: cephfs, getter: false, setter: false},
                  cinder:                  {type: V1::CinderVolumeSource, nilable: true, key: cinder, getter: false, setter: false},
                  config_map:              {type: V1::ConfigMapVolumeSource, nilable: true, key: configMap, getter: false, setter: false},
                  downward_api:            {type: V1::DownwardAPIVolumeSource, nilable: true, key: downwardAPI, getter: false, setter: false},
                  empty_dir:               {type: V1::EmptyDirVolumeSource, nilable: true, key: emptyDir, getter: false, setter: false},
                  fc:                      {type: V1::FCVolumeSource, nilable: true, key: fc, getter: false, setter: false},
                  flex_volume:             {type: V1::FlexVolumeSource, nilable: true, key: flexVolume, getter: false, setter: false},
                  flocker:                 {type: V1::FlockerVolumeSource, nilable: true, key: flocker, getter: false, setter: false},
                  gce_persistent_disk:     {type: V1::GCEPersistentDiskVolumeSource, nilable: true, key: gcePersistentDisk, getter: false, setter: false},
                  git_repo:                {type: V1::GitRepoVolumeSource, nilable: true, key: gitRepo, getter: false, setter: false},
                  glusterfs:               {type: V1::GlusterfsVolumeSource, nilable: true, key: glusterfs, getter: false, setter: false},
                  host_path:               {type: V1::HostPathVolumeSource, nilable: true, key: hostPath, getter: false, setter: false},
                  iscsi:                   {type: V1::ISCSIVolumeSource, nilable: true, key: iscsi, getter: false, setter: false},
                  name:                    {type: String, nilable: false, key: name, getter: false, setter: false},
                  nfs:                     {type: V1::NFSVolumeSource, nilable: true, key: nfs, getter: false, setter: false},
                  persistent_volume_claim: {type: V1::PersistentVolumeClaimVolumeSource, nilable: true, key: persistentVolumeClaim, getter: false, setter: false},
                  photon_persistent_disk:  {type: V1::PhotonPersistentDiskVolumeSource, nilable: true, key: photonPersistentDisk, getter: false, setter: false},
                  quobyte:                 {type: V1::QuobyteVolumeSource, nilable: true, key: quobyte, getter: false, setter: false},
                  rbd:                     {type: V1::RBDVolumeSource, nilable: true, key: rbd, getter: false, setter: false},
                  secret:                  {type: V1::SecretVolumeSource, nilable: true, key: secret, getter: false, setter: false},
                  vsphere_volume:          {type: V1::VsphereVirtualDiskVolumeSource, nilable: true, key: vsphereVolume, getter: false, setter: false}}, true)

    def initialize(@aws_elastic_block_store : V1::AWSElasticBlockStoreVolumeSource = nil, @azure_disk : V1::AzureDiskVolumeSource = nil, @azure_file : V1::AzureFileVolumeSource = nil, @cephfs : V1::CephFSVolumeSource = nil, @cinder : V1::CinderVolumeSource = nil, @config_map : V1::ConfigMapVolumeSource = nil, @downward_api : V1::DownwardAPIVolumeSource = nil, @empty_dir : V1::EmptyDirVolumeSource = nil, @fc : V1::FCVolumeSource = nil, @flex_volume : V1::FlexVolumeSource = nil, @flocker : V1::FlockerVolumeSource = nil, @gce_persistent_disk : V1::GCEPersistentDiskVolumeSource = nil, @git_repo : V1::GitRepoVolumeSource = nil, @glusterfs : V1::GlusterfsVolumeSource = nil, @host_path : V1::HostPathVolumeSource = nil, @iscsi : V1::ISCSIVolumeSource = nil, @name : String? = nil, @nfs : V1::NFSVolumeSource = nil, @persistent_volume_claim : V1::PersistentVolumeClaimVolumeSource = nil, @photon_persistent_disk : V1::PhotonPersistentDiskVolumeSource = nil, @quobyte : V1::QuobyteVolumeSource = nil, @rbd : V1::RBDVolumeSource = nil, @secret : V1::SecretVolumeSource = nil, @vsphere_volume : V1::VsphereVirtualDiskVolumeSource = nil)
    end
  end
end
