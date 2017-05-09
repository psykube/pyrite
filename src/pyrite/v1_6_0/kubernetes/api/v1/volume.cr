# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  # Volume represents a named volume in a pod that may be accessed by any container in the pod.
  class Definitions::Kubernetes::Api::V1::Volume
    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore](http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore)
    property aws_elastic_block_store : Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource

    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    property azure_disk : Kubernetes::Api::V1::AzureDiskVolumeSource

    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    property azure_file : Kubernetes::Api::V1::AzureFileVolumeSource

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    property cephfs : Kubernetes::Api::V1::CephFSVolumeSource

    # Cinder represents a cinder volume attached and mounted on kubelets host machine More info: [http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    property cinder : Kubernetes::Api::V1::CinderVolumeSource

    # ConfigMap represents a configMap that should populate this volume
    property config_map : Kubernetes::Api::V1::ConfigMapVolumeSource

    # DownwardAPI represents downward API about the pod that should populate this volume
    property downward_api : Kubernetes::Api::V1::DownwardAPIVolumeSource

    # EmptyDir represents a temporary directory that shares a pod's lifetime. More info: [http://kubernetes.io/docs/user-guide/volumes#emptydir](http://kubernetes.io/docs/user-guide/volumes#emptydir)
    property empty_dir : Kubernetes::Api::V1::EmptyDirVolumeSource

    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    property fc : Kubernetes::Api::V1::FCVolumeSource

    # FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.](provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.)
    property flex_volume : Kubernetes::Api::V1::FlexVolumeSource

    # Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running
    property flocker : Kubernetes::Api::V1::FlockerVolumeSource

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk](http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk)
    property gce_persistent_disk : Kubernetes::Api::V1::GCEPersistentDiskVolumeSource

    # GitRepo represents a git repository at a particular revision.
    property git_repo : Kubernetes::Api::V1::GitRepoVolumeSource

    # Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: [http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md](http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md)
    property glusterfs : Kubernetes::Api::V1::GlusterfsVolumeSource

    # HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: [http://kubernetes.io/docs/user-guide/volumes#hostpath](http://kubernetes.io/docs/user-guide/volumes#hostpath)
    property host_path : Kubernetes::Api::V1::HostPathVolumeSource

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [http://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md](http://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md)
    property iscsi : Kubernetes::Api::V1::ISCSIVolumeSource

    # Volume's name. Must be a DNS_LABEL and unique within the pod. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    # NFS represents an NFS mount on the host that shares a pod's lifetime More info: [http://kubernetes.io/docs/user-guide/volumes#nfs](http://kubernetes.io/docs/user-guide/volumes#nfs)
    property nfs : Kubernetes::Api::V1::NFSVolumeSource

    # PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: [http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims](http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims)
    property persistent_volume_claim : Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource

    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    property photon_persistent_disk : Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource

    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    property portworx_volume : Kubernetes::Api::V1::PortworxVolumeSource

    # Items for all in one resources secrets, configmaps, and downward API
    property projected : Kubernetes::Api::V1::ProjectedVolumeSource

    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    property quobyte : Kubernetes::Api::V1::QuobyteVolumeSource

    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md](http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md)
    property rbd : Kubernetes::Api::V1::RBDVolumeSource

    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    property scale_io : Kubernetes::Api::V1::ScaleIOVolumeSource

    # Secret represents a secret that should populate this volume. More info: [http://kubernetes.io/docs/user-guide/volumes#secrets](http://kubernetes.io/docs/user-guide/volumes#secrets)
    property secret : Kubernetes::Api::V1::SecretVolumeSource

    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    property vsphere_volume : Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource

    YAML.mapping({aws_elastic_block_store: {type: Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: awsElasticBlockStore, getter: false, setter: false},
                  azure_disk:              {type: Kubernetes::Api::V1::AzureDiskVolumeSource, nilable: true, key: azureDisk, getter: false, setter: false},
                  azure_file:              {type: Kubernetes::Api::V1::AzureFileVolumeSource, nilable: true, key: azureFile, getter: false, setter: false},
                  cephfs:                  {type: Kubernetes::Api::V1::CephFSVolumeSource, nilable: true, key: cephfs, getter: false, setter: false},
                  cinder:                  {type: Kubernetes::Api::V1::CinderVolumeSource, nilable: true, key: cinder, getter: false, setter: false},
                  config_map:              {type: Kubernetes::Api::V1::ConfigMapVolumeSource, nilable: true, key: configMap, getter: false, setter: false},
                  downward_api:            {type: Kubernetes::Api::V1::DownwardAPIVolumeSource, nilable: true, key: downwardAPI, getter: false, setter: false},
                  empty_dir:               {type: Kubernetes::Api::V1::EmptyDirVolumeSource, nilable: true, key: emptyDir, getter: false, setter: false},
                  fc:                      {type: Kubernetes::Api::V1::FCVolumeSource, nilable: true, key: fc, getter: false, setter: false},
                  flex_volume:             {type: Kubernetes::Api::V1::FlexVolumeSource, nilable: true, key: flexVolume, getter: false, setter: false},
                  flocker:                 {type: Kubernetes::Api::V1::FlockerVolumeSource, nilable: true, key: flocker, getter: false, setter: false},
                  gce_persistent_disk:     {type: Kubernetes::Api::V1::GCEPersistentDiskVolumeSource, nilable: true, key: gcePersistentDisk, getter: false, setter: false},
                  git_repo:                {type: Kubernetes::Api::V1::GitRepoVolumeSource, nilable: true, key: gitRepo, getter: false, setter: false},
                  glusterfs:               {type: Kubernetes::Api::V1::GlusterfsVolumeSource, nilable: true, key: glusterfs, getter: false, setter: false},
                  host_path:               {type: Kubernetes::Api::V1::HostPathVolumeSource, nilable: true, key: hostPath, getter: false, setter: false},
                  iscsi:                   {type: Kubernetes::Api::V1::ISCSIVolumeSource, nilable: true, key: iscsi, getter: false, setter: false},
                  name:                    {type: String, nilable: false, key: name, getter: false, setter: false},
                  nfs:                     {type: Kubernetes::Api::V1::NFSVolumeSource, nilable: true, key: nfs, getter: false, setter: false},
                  persistent_volume_claim: {type: Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource, nilable: true, key: persistentVolumeClaim, getter: false, setter: false},
                  photon_persistent_disk:  {type: Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: photonPersistentDisk, getter: false, setter: false},
                  portworx_volume:         {type: Kubernetes::Api::V1::PortworxVolumeSource, nilable: true, key: portworxVolume, getter: false, setter: false},
                  projected:               {type: Kubernetes::Api::V1::ProjectedVolumeSource, nilable: true, key: projected, getter: false, setter: false},
                  quobyte:                 {type: Kubernetes::Api::V1::QuobyteVolumeSource, nilable: true, key: quobyte, getter: false, setter: false},
                  rbd:                     {type: Kubernetes::Api::V1::RBDVolumeSource, nilable: true, key: rbd, getter: false, setter: false},
                  scale_io:                {type: Kubernetes::Api::V1::ScaleIOVolumeSource, nilable: true, key: scaleIO, getter: false, setter: false},
                  secret:                  {type: Kubernetes::Api::V1::SecretVolumeSource, nilable: true, key: secret, getter: false, setter: false},
                  vsphere_volume:          {type: Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: vsphereVolume, getter: false, setter: false}}, true)

    JSON.mapping({aws_elastic_block_store: {type: Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: awsElasticBlockStore, getter: false, setter: false},
                  azure_disk:              {type: Kubernetes::Api::V1::AzureDiskVolumeSource, nilable: true, key: azureDisk, getter: false, setter: false},
                  azure_file:              {type: Kubernetes::Api::V1::AzureFileVolumeSource, nilable: true, key: azureFile, getter: false, setter: false},
                  cephfs:                  {type: Kubernetes::Api::V1::CephFSVolumeSource, nilable: true, key: cephfs, getter: false, setter: false},
                  cinder:                  {type: Kubernetes::Api::V1::CinderVolumeSource, nilable: true, key: cinder, getter: false, setter: false},
                  config_map:              {type: Kubernetes::Api::V1::ConfigMapVolumeSource, nilable: true, key: configMap, getter: false, setter: false},
                  downward_api:            {type: Kubernetes::Api::V1::DownwardAPIVolumeSource, nilable: true, key: downwardAPI, getter: false, setter: false},
                  empty_dir:               {type: Kubernetes::Api::V1::EmptyDirVolumeSource, nilable: true, key: emptyDir, getter: false, setter: false},
                  fc:                      {type: Kubernetes::Api::V1::FCVolumeSource, nilable: true, key: fc, getter: false, setter: false},
                  flex_volume:             {type: Kubernetes::Api::V1::FlexVolumeSource, nilable: true, key: flexVolume, getter: false, setter: false},
                  flocker:                 {type: Kubernetes::Api::V1::FlockerVolumeSource, nilable: true, key: flocker, getter: false, setter: false},
                  gce_persistent_disk:     {type: Kubernetes::Api::V1::GCEPersistentDiskVolumeSource, nilable: true, key: gcePersistentDisk, getter: false, setter: false},
                  git_repo:                {type: Kubernetes::Api::V1::GitRepoVolumeSource, nilable: true, key: gitRepo, getter: false, setter: false},
                  glusterfs:               {type: Kubernetes::Api::V1::GlusterfsVolumeSource, nilable: true, key: glusterfs, getter: false, setter: false},
                  host_path:               {type: Kubernetes::Api::V1::HostPathVolumeSource, nilable: true, key: hostPath, getter: false, setter: false},
                  iscsi:                   {type: Kubernetes::Api::V1::ISCSIVolumeSource, nilable: true, key: iscsi, getter: false, setter: false},
                  name:                    {type: String, nilable: false, key: name, getter: false, setter: false},
                  nfs:                     {type: Kubernetes::Api::V1::NFSVolumeSource, nilable: true, key: nfs, getter: false, setter: false},
                  persistent_volume_claim: {type: Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource, nilable: true, key: persistentVolumeClaim, getter: false, setter: false},
                  photon_persistent_disk:  {type: Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: photonPersistentDisk, getter: false, setter: false},
                  portworx_volume:         {type: Kubernetes::Api::V1::PortworxVolumeSource, nilable: true, key: portworxVolume, getter: false, setter: false},
                  projected:               {type: Kubernetes::Api::V1::ProjectedVolumeSource, nilable: true, key: projected, getter: false, setter: false},
                  quobyte:                 {type: Kubernetes::Api::V1::QuobyteVolumeSource, nilable: true, key: quobyte, getter: false, setter: false},
                  rbd:                     {type: Kubernetes::Api::V1::RBDVolumeSource, nilable: true, key: rbd, getter: false, setter: false},
                  scale_io:                {type: Kubernetes::Api::V1::ScaleIOVolumeSource, nilable: true, key: scaleIO, getter: false, setter: false},
                  secret:                  {type: Kubernetes::Api::V1::SecretVolumeSource, nilable: true, key: secret, getter: false, setter: false},
                  vsphere_volume:          {type: Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: vsphereVolume, getter: false, setter: false}}, true)

    def initialize(@aws_elastic_block_store : Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource = nil, @azure_disk : Kubernetes::Api::V1::AzureDiskVolumeSource = nil, @azure_file : Kubernetes::Api::V1::AzureFileVolumeSource = nil, @cephfs : Kubernetes::Api::V1::CephFSVolumeSource = nil, @cinder : Kubernetes::Api::V1::CinderVolumeSource = nil, @config_map : Kubernetes::Api::V1::ConfigMapVolumeSource = nil, @downward_api : Kubernetes::Api::V1::DownwardAPIVolumeSource = nil, @empty_dir : Kubernetes::Api::V1::EmptyDirVolumeSource = nil, @fc : Kubernetes::Api::V1::FCVolumeSource = nil, @flex_volume : Kubernetes::Api::V1::FlexVolumeSource = nil, @flocker : Kubernetes::Api::V1::FlockerVolumeSource = nil, @gce_persistent_disk : Kubernetes::Api::V1::GCEPersistentDiskVolumeSource = nil, @git_repo : Kubernetes::Api::V1::GitRepoVolumeSource = nil, @glusterfs : Kubernetes::Api::V1::GlusterfsVolumeSource = nil, @host_path : Kubernetes::Api::V1::HostPathVolumeSource = nil, @iscsi : Kubernetes::Api::V1::ISCSIVolumeSource = nil, @name : String? = nil, @nfs : Kubernetes::Api::V1::NFSVolumeSource = nil, @persistent_volume_claim : Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource = nil, @photon_persistent_disk : Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource = nil, @portworx_volume : Kubernetes::Api::V1::PortworxVolumeSource = nil, @projected : Kubernetes::Api::V1::ProjectedVolumeSource = nil, @quobyte : Kubernetes::Api::V1::QuobyteVolumeSource = nil, @rbd : Kubernetes::Api::V1::RBDVolumeSource = nil, @scale_io : Kubernetes::Api::V1::ScaleIOVolumeSource = nil, @secret : Kubernetes::Api::V1::SecretVolumeSource = nil, @vsphere_volume : Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource = nil)
    end
  end
end
