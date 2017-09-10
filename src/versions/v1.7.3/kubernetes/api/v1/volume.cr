# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Volume represents a named volume in a pod that may be accessed by any container in the pod.
  class Kubernetes::Api::V1::Volume
    # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore](https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore)
    property aws_elastic_block_store : Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource | Nil

    # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    property azure_disk : Kubernetes::Api::V1::AzureDiskVolumeSource | Nil

    # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
    property azure_file : Kubernetes::Api::V1::AzureFileVolumeSource | Nil

    # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    property cephfs : Kubernetes::Api::V1::CephFSVolumeSource | Nil

    # Cinder represents a cinder volume attached and mounted on kubelets host machine More info: [https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md](https://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md)
    property cinder : Kubernetes::Api::V1::CinderVolumeSource | Nil

    # ConfigMap represents a configMap that should populate this volume
    property config_map : Kubernetes::Api::V1::ConfigMapVolumeSource | Nil

    # DownwardAPI represents downward API about the pod that should populate this volume
    property downward_api : Kubernetes::Api::V1::DownwardAPIVolumeSource | Nil

    # EmptyDir represents a temporary directory that shares a pod's lifetime. More info: [https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)
    property empty_dir : Kubernetes::Api::V1::EmptyDirVolumeSource | Nil

    # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
    property fc : Kubernetes::Api::V1::FCVolumeSource | Nil

    # FlexVolume represents a generic volume resource that is [provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.](provisioned/attached using an exec based plugin. This is an alpha feature and may change in future.)
    property flex_volume : Kubernetes::Api::V1::FlexVolumeSource | Nil

    # Flocker represents a Flocker volume attached to a kubelet's host machine. This depends on the Flocker control service being running
    property flocker : Kubernetes::Api::V1::FlockerVolumeSource | Nil

    # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk](https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk)
    property gce_persistent_disk : Kubernetes::Api::V1::GCEPersistentDiskVolumeSource | Nil

    # GitRepo represents a git repository at a particular revision.
    property git_repo : Kubernetes::Api::V1::GitRepoVolumeSource | Nil

    # Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More info: [https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md](https://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md)
    property glusterfs : Kubernetes::Api::V1::GlusterfsVolumeSource | Nil

    # HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container. This is generally used for system agents or other privileged things that are allowed to see the host machine. Most containers will NOT need this. More info: [https://kubernetes.io/docs/concepts/storage/volumes#hostpath](https://kubernetes.io/docs/concepts/storage/volumes#hostpath)
    property host_path : Kubernetes::Api::V1::HostPathVolumeSource | Nil

    # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod. More info: [https://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md](https://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md)
    property iscsi : Kubernetes::Api::V1::ISCSIVolumeSource | Nil

    # Volume's name. Must be a DNS_LABEL and unique within the pod. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    property name : String

    # NFS represents an NFS mount on the host that shares a pod's lifetime More info: [https://kubernetes.io/docs/concepts/storage/volumes#nfs](https://kubernetes.io/docs/concepts/storage/volumes#nfs)
    property nfs : Kubernetes::Api::V1::NFSVolumeSource | Nil

    # PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims](https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims)
    property persistent_volume_claim : Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource | Nil

    # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
    property photon_persistent_disk : Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource | Nil

    # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
    property portworx_volume : Kubernetes::Api::V1::PortworxVolumeSource | Nil

    # Items for all in one resources secrets, configmaps, and downward API
    property projected : Kubernetes::Api::V1::ProjectedVolumeSource | Nil

    # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    property quobyte : Kubernetes::Api::V1::QuobyteVolumeSource | Nil

    # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime. More info: [https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md](https://releases.k8s.io/HEAD/examples/volumes/rbd/README.md)
    property rbd : Kubernetes::Api::V1::RBDVolumeSource | Nil

    # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    property scale_io : Kubernetes::Api::V1::ScaleIOVolumeSource | Nil

    # Secret represents a secret that should populate this volume. More info: [https://kubernetes.io/docs/concepts/storage/volumes#secret](https://kubernetes.io/docs/concepts/storage/volumes#secret)
    property secret : Kubernetes::Api::V1::SecretVolumeSource | Nil

    # StorageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
    property storageos : Kubernetes::Api::V1::StorageOSVolumeSource | Nil

    # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    property vsphere_volume : Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource | Nil

    YAML.mapping({
      aws_elastic_block_store: {type: Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: "awsElasticBlockStore"},
      azure_disk:              {type: Kubernetes::Api::V1::AzureDiskVolumeSource, nilable: true, key: "azureDisk"},
      azure_file:              {type: Kubernetes::Api::V1::AzureFileVolumeSource, nilable: true, key: "azureFile"},
      cephfs:                  {type: Kubernetes::Api::V1::CephFSVolumeSource, nilable: true, key: "cephfs"},
      cinder:                  {type: Kubernetes::Api::V1::CinderVolumeSource, nilable: true, key: "cinder"},
      config_map:              {type: Kubernetes::Api::V1::ConfigMapVolumeSource, nilable: true, key: "configMap"},
      downward_api:            {type: Kubernetes::Api::V1::DownwardAPIVolumeSource, nilable: true, key: "downwardAPI"},
      empty_dir:               {type: Kubernetes::Api::V1::EmptyDirVolumeSource, nilable: true, key: "emptyDir"},
      fc:                      {type: Kubernetes::Api::V1::FCVolumeSource, nilable: true, key: "fc"},
      flex_volume:             {type: Kubernetes::Api::V1::FlexVolumeSource, nilable: true, key: "flexVolume"},
      flocker:                 {type: Kubernetes::Api::V1::FlockerVolumeSource, nilable: true, key: "flocker"},
      gce_persistent_disk:     {type: Kubernetes::Api::V1::GCEPersistentDiskVolumeSource, nilable: true, key: "gcePersistentDisk"},
      git_repo:                {type: Kubernetes::Api::V1::GitRepoVolumeSource, nilable: true, key: "gitRepo"},
      glusterfs:               {type: Kubernetes::Api::V1::GlusterfsVolumeSource, nilable: true, key: "glusterfs"},
      host_path:               {type: Kubernetes::Api::V1::HostPathVolumeSource, nilable: true, key: "hostPath"},
      iscsi:                   {type: Kubernetes::Api::V1::ISCSIVolumeSource, nilable: true, key: "iscsi"},
      name:                    {type: String, nilable: false, key: "name"},
      nfs:                     {type: Kubernetes::Api::V1::NFSVolumeSource, nilable: true, key: "nfs"},
      persistent_volume_claim: {type: Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource, nilable: true, key: "persistentVolumeClaim"},
      photon_persistent_disk:  {type: Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: "photonPersistentDisk"},
      portworx_volume:         {type: Kubernetes::Api::V1::PortworxVolumeSource, nilable: true, key: "portworxVolume"},
      projected:               {type: Kubernetes::Api::V1::ProjectedVolumeSource, nilable: true, key: "projected"},
      quobyte:                 {type: Kubernetes::Api::V1::QuobyteVolumeSource, nilable: true, key: "quobyte"},
      rbd:                     {type: Kubernetes::Api::V1::RBDVolumeSource, nilable: true, key: "rbd"},
      scale_io:                {type: Kubernetes::Api::V1::ScaleIOVolumeSource, nilable: true, key: "scaleIO"},
      secret:                  {type: Kubernetes::Api::V1::SecretVolumeSource, nilable: true, key: "secret"},
      storageos:               {type: Kubernetes::Api::V1::StorageOSVolumeSource, nilable: true, key: "storageos"},
      vsphere_volume:          {type: Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: "vsphereVolume"},
    }, true)

    JSON.mapping({
      aws_elastic_block_store: {type: Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: "awsElasticBlockStore"},
      azure_disk:              {type: Kubernetes::Api::V1::AzureDiskVolumeSource, nilable: true, key: "azureDisk"},
      azure_file:              {type: Kubernetes::Api::V1::AzureFileVolumeSource, nilable: true, key: "azureFile"},
      cephfs:                  {type: Kubernetes::Api::V1::CephFSVolumeSource, nilable: true, key: "cephfs"},
      cinder:                  {type: Kubernetes::Api::V1::CinderVolumeSource, nilable: true, key: "cinder"},
      config_map:              {type: Kubernetes::Api::V1::ConfigMapVolumeSource, nilable: true, key: "configMap"},
      downward_api:            {type: Kubernetes::Api::V1::DownwardAPIVolumeSource, nilable: true, key: "downwardAPI"},
      empty_dir:               {type: Kubernetes::Api::V1::EmptyDirVolumeSource, nilable: true, key: "emptyDir"},
      fc:                      {type: Kubernetes::Api::V1::FCVolumeSource, nilable: true, key: "fc"},
      flex_volume:             {type: Kubernetes::Api::V1::FlexVolumeSource, nilable: true, key: "flexVolume"},
      flocker:                 {type: Kubernetes::Api::V1::FlockerVolumeSource, nilable: true, key: "flocker"},
      gce_persistent_disk:     {type: Kubernetes::Api::V1::GCEPersistentDiskVolumeSource, nilable: true, key: "gcePersistentDisk"},
      git_repo:                {type: Kubernetes::Api::V1::GitRepoVolumeSource, nilable: true, key: "gitRepo"},
      glusterfs:               {type: Kubernetes::Api::V1::GlusterfsVolumeSource, nilable: true, key: "glusterfs"},
      host_path:               {type: Kubernetes::Api::V1::HostPathVolumeSource, nilable: true, key: "hostPath"},
      iscsi:                   {type: Kubernetes::Api::V1::ISCSIVolumeSource, nilable: true, key: "iscsi"},
      name:                    {type: String, nilable: false, key: "name"},
      nfs:                     {type: Kubernetes::Api::V1::NFSVolumeSource, nilable: true, key: "nfs"},
      persistent_volume_claim: {type: Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource, nilable: true, key: "persistentVolumeClaim"},
      photon_persistent_disk:  {type: Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: "photonPersistentDisk"},
      portworx_volume:         {type: Kubernetes::Api::V1::PortworxVolumeSource, nilable: true, key: "portworxVolume"},
      projected:               {type: Kubernetes::Api::V1::ProjectedVolumeSource, nilable: true, key: "projected"},
      quobyte:                 {type: Kubernetes::Api::V1::QuobyteVolumeSource, nilable: true, key: "quobyte"},
      rbd:                     {type: Kubernetes::Api::V1::RBDVolumeSource, nilable: true, key: "rbd"},
      scale_io:                {type: Kubernetes::Api::V1::ScaleIOVolumeSource, nilable: true, key: "scaleIO"},
      secret:                  {type: Kubernetes::Api::V1::SecretVolumeSource, nilable: true, key: "secret"},
      storageos:               {type: Kubernetes::Api::V1::StorageOSVolumeSource, nilable: true, key: "storageos"},
      vsphere_volume:          {type: Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: "vsphereVolume"},
    }, true)

    def initialize(*, @aws_elastic_block_store : Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource | Nil = nil, @azure_disk : Kubernetes::Api::V1::AzureDiskVolumeSource | Nil = nil, @azure_file : Kubernetes::Api::V1::AzureFileVolumeSource | Nil = nil, @cephfs : Kubernetes::Api::V1::CephFSVolumeSource | Nil = nil, @cinder : Kubernetes::Api::V1::CinderVolumeSource | Nil = nil, @config_map : Kubernetes::Api::V1::ConfigMapVolumeSource | Nil = nil, @downward_api : Kubernetes::Api::V1::DownwardAPIVolumeSource | Nil = nil, @empty_dir : Kubernetes::Api::V1::EmptyDirVolumeSource | Nil = nil, @fc : Kubernetes::Api::V1::FCVolumeSource | Nil = nil, @flex_volume : Kubernetes::Api::V1::FlexVolumeSource | Nil = nil, @flocker : Kubernetes::Api::V1::FlockerVolumeSource | Nil = nil, @gce_persistent_disk : Kubernetes::Api::V1::GCEPersistentDiskVolumeSource | Nil = nil, @git_repo : Kubernetes::Api::V1::GitRepoVolumeSource | Nil = nil, @glusterfs : Kubernetes::Api::V1::GlusterfsVolumeSource | Nil = nil, @host_path : Kubernetes::Api::V1::HostPathVolumeSource | Nil = nil, @iscsi : Kubernetes::Api::V1::ISCSIVolumeSource | Nil = nil, @name : String | Nil = nil, @nfs : Kubernetes::Api::V1::NFSVolumeSource | Nil = nil, @persistent_volume_claim : Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource | Nil = nil, @photon_persistent_disk : Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource | Nil = nil, @portworx_volume : Kubernetes::Api::V1::PortworxVolumeSource | Nil = nil, @projected : Kubernetes::Api::V1::ProjectedVolumeSource | Nil = nil, @quobyte : Kubernetes::Api::V1::QuobyteVolumeSource | Nil = nil, @rbd : Kubernetes::Api::V1::RBDVolumeSource | Nil = nil, @scale_io : Kubernetes::Api::V1::ScaleIOVolumeSource | Nil = nil, @secret : Kubernetes::Api::V1::SecretVolumeSource | Nil = nil, @storageos : Kubernetes::Api::V1::StorageOSVolumeSource | Nil = nil, @vsphere_volume : Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource | Nil = nil)
    end
  end
end
