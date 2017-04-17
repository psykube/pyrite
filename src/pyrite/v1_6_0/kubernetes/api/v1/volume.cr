# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Volume represents a named volume in a pod that may be accessed by any container in the pod.
class Pyrite::V1_6_0::Kubernetes::Api::V1::Volume
  # AWSElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host machine and then exposed to the pod.More info: http://kubernetes.io/docs/user-guide/volumes#awselasticblockstore
  property aws_elastic_block_store : ::Pyrite::V1_6_0::Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource

  # AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
  property azure_disk : ::Pyrite::V1_6_0::Kubernetes::Api::V1::AzureDiskVolumeSource

  # AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
  property azure_file : ::Pyrite::V1_6_0::Kubernetes::Api::V1::AzureFileVolumeSource

  # CephFS represents a Ceph FS mount on the host that shares a pod's lifetime
  property cephfs : ::Pyrite::V1_6_0::Kubernetes::Api::V1::CephFSVolumeSource

  # Cinder represents a cinder volume attached and mounted on kubelets host machine More info: http://releases.k8s.io/HEAD/examples/mysql-cinder-pd/README.md
  property cinder : ::Pyrite::V1_6_0::Kubernetes::Api::V1::CinderVolumeSource

  # ConfigMap represents a configMap that should populate this volume
  property config_map : ::Pyrite::V1_6_0::Kubernetes::Api::V1::ConfigMapVolumeSource

  # DownwardAPI represents downward API about the pod that should populate this volume
  property downward_api : ::Pyrite::V1_6_0::Kubernetes::Api::V1::DownwardAPIVolumeSource

  # EmptyDir represents a temporary directory that shares a pod's lifetime.More info: http://kubernetes.io/docs/user-guide/volumes#emptydir
  property empty_dir : ::Pyrite::V1_6_0::Kubernetes::Api::V1::EmptyDirVolumeSource

  # FC represents a Fibre Channel resource that is attached to a kubelet's host machine and then exposed to the pod.
  property fc : ::Pyrite::V1_6_0::Kubernetes::Api::V1::FCVolumeSource

  # FlexVolume represents a generic volume resource that is provisioned/attached using an exec based plugin.This is an alpha feature and may change in future.
  property flex_volume : ::Pyrite::V1_6_0::Kubernetes::Api::V1::FlexVolumeSource

  # Flocker represents a Flocker volume attached to a kubelet's host machine.This depends on the Flocker control service being running
  property flocker : ::Pyrite::V1_6_0::Kubernetes::Api::V1::FlockerVolumeSource

  # GCEPersistentDisk represents a GCE Disk resource that is attached to a kubelet's host machine and then exposed to the pod.More info: http://kubernetes.io/docs/user-guide/volumes#gcepersistentdisk
  property gce_persistent_disk : ::Pyrite::V1_6_0::Kubernetes::Api::V1::GCEPersistentDiskVolumeSource

  # GitRepo represents a git repository at a particular revision.
  property git_repo : ::Pyrite::V1_6_0::Kubernetes::Api::V1::GitRepoVolumeSource

  # Glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime.More info: http://releases.k8s.io/HEAD/examples/volumes/glusterfs/README.md
  property glusterfs : ::Pyrite::V1_6_0::Kubernetes::Api::V1::GlusterfsVolumeSource

  # HostPath represents a pre-existing file or directory on the host machine that is directly exposed to the container.This is generally used for system agents or other privileged things that are allowed to see the host machine.Most containers will NOT need this.More info: http://kubernetes.io/docs/user-guide/volumes#hostpath
  property host_path : ::Pyrite::V1_6_0::Kubernetes::Api::V1::HostPathVolumeSource

  # ISCSI represents an ISCSI Disk resource that is attached to a kubelet's host machine and then exposed to the pod.More info: http://releases.k8s.io/HEAD/examples/volumes/iscsi/README.md
  property iscsi : ::Pyrite::V1_6_0::Kubernetes::Api::V1::ISCSIVolumeSource

  # Volume's name.Must be a DNS_LABEL and unique within the pod.More info: http://kubernetes.io/docs/user-guide/identifiers#names
  property name : String

  # NFS represents an NFS mount on the host that shares a pod's lifetime More info: http://kubernetes.io/docs/user-guide/volumes#nfs
  property nfs : ::Pyrite::V1_6_0::Kubernetes::Api::V1::NFSVolumeSource

  # PersistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in the same namespace.More info: http://kubernetes.io/docs/user-guide/persistent-volumes#persistentvolumeclaims
  property persistent_volume_claim : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource

  # PhotonPersistentDisk represents a PhotonController persistent disk attached and mounted on kubelets host machine
  property photon_persistent_disk : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource

  # PortworxVolume represents a portworx volume attached and mounted on kubelets host machine
  property portworx_volume : ::Pyrite::V1_6_0::Kubernetes::Api::V1::PortworxVolumeSource

  # Items for all in one resources secrets, configmaps, and downward API
  property projected : ::Pyrite::V1_6_0::Kubernetes::Api::V1::ProjectedVolumeSource

  # Quobyte represents a Quobyte mount on the host that shares a pod's lifetime
  property quobyte : ::Pyrite::V1_6_0::Kubernetes::Api::V1::QuobyteVolumeSource

  # RBD represents a Rados Block Device mount on the host that shares a pod's lifetime.More info: http://releases.k8s.io/HEAD/examples/volumes/rbd/README.md
  property rbd : ::Pyrite::V1_6_0::Kubernetes::Api::V1::RBDVolumeSource

  # ScaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
  property scale_io : ::Pyrite::V1_6_0::Kubernetes::Api::V1::ScaleIOVolumeSource

  # Secret represents a secret that should populate this volume.More info: http://kubernetes.io/docs/user-guide/volumes#secrets
  property secret : ::Pyrite::V1_6_0::Kubernetes::Api::V1::SecretVolumeSource

  # VsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
  property vsphere_volume : ::Pyrite::V1_6_0::Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource

  YAML.mapping({aws_elastic_block_store: {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: awsElasticBlockStore, getter: false, setter: false},
                azure_disk:              {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::AzureDiskVolumeSource, nilable: true, key: azureDisk, getter: false, setter: false},
                azure_file:              {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::AzureFileVolumeSource, nilable: true, key: azureFile, getter: false, setter: false},
                cephfs:                  {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::CephFSVolumeSource, nilable: true, key: cephfs, getter: false, setter: false},
                cinder:                  {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::CinderVolumeSource, nilable: true, key: cinder, getter: false, setter: false},
                config_map:              {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ConfigMapVolumeSource, nilable: true, key: configMap, getter: false, setter: false},
                downward_api:            {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::DownwardAPIVolumeSource, nilable: true, key: downwardAPI, getter: false, setter: false},
                empty_dir:               {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::EmptyDirVolumeSource, nilable: true, key: emptyDir, getter: false, setter: false},
                fc:                      {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::FCVolumeSource, nilable: true, key: fc, getter: false, setter: false},
                flex_volume:             {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::FlexVolumeSource, nilable: true, key: flexVolume, getter: false, setter: false},
                flocker:                 {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::FlockerVolumeSource, nilable: true, key: flocker, getter: false, setter: false},
                gce_persistent_disk:     {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::GCEPersistentDiskVolumeSource, nilable: true, key: gcePersistentDisk, getter: false, setter: false},
                git_repo:                {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::GitRepoVolumeSource, nilable: true, key: gitRepo, getter: false, setter: false},
                glusterfs:               {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::GlusterfsVolumeSource, nilable: true, key: glusterfs, getter: false, setter: false},
                host_path:               {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::HostPathVolumeSource, nilable: true, key: hostPath, getter: false, setter: false},
                iscsi:                   {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ISCSIVolumeSource, nilable: true, key: iscsi, getter: false, setter: false},
                name:                    {type: String, nilable: false, key: name, getter: false, setter: false},
                nfs:                     {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::NFSVolumeSource, nilable: true, key: nfs, getter: false, setter: false},
                persistent_volume_claim: {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource, nilable: true, key: persistentVolumeClaim, getter: false, setter: false},
                photon_persistent_disk:  {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: photonPersistentDisk, getter: false, setter: false},
                portworx_volume:         {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PortworxVolumeSource, nilable: true, key: portworxVolume, getter: false, setter: false},
                projected:               {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ProjectedVolumeSource, nilable: true, key: projected, getter: false, setter: false},
                quobyte:                 {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::QuobyteVolumeSource, nilable: true, key: quobyte, getter: false, setter: false},
                rbd:                     {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::RBDVolumeSource, nilable: true, key: rbd, getter: false, setter: false},
                scale_io:                {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ScaleIOVolumeSource, nilable: true, key: scaleIO, getter: false, setter: false},
                secret:                  {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::SecretVolumeSource, nilable: true, key: secret, getter: false, setter: false},
                vsphere_volume:          {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: vsphereVolume, getter: false, setter: false}}, true)

  JSON.mapping({aws_elastic_block_store: {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource, nilable: true, key: awsElasticBlockStore, getter: false, setter: false},
                azure_disk:              {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::AzureDiskVolumeSource, nilable: true, key: azureDisk, getter: false, setter: false},
                azure_file:              {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::AzureFileVolumeSource, nilable: true, key: azureFile, getter: false, setter: false},
                cephfs:                  {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::CephFSVolumeSource, nilable: true, key: cephfs, getter: false, setter: false},
                cinder:                  {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::CinderVolumeSource, nilable: true, key: cinder, getter: false, setter: false},
                config_map:              {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ConfigMapVolumeSource, nilable: true, key: configMap, getter: false, setter: false},
                downward_api:            {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::DownwardAPIVolumeSource, nilable: true, key: downwardAPI, getter: false, setter: false},
                empty_dir:               {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::EmptyDirVolumeSource, nilable: true, key: emptyDir, getter: false, setter: false},
                fc:                      {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::FCVolumeSource, nilable: true, key: fc, getter: false, setter: false},
                flex_volume:             {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::FlexVolumeSource, nilable: true, key: flexVolume, getter: false, setter: false},
                flocker:                 {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::FlockerVolumeSource, nilable: true, key: flocker, getter: false, setter: false},
                gce_persistent_disk:     {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::GCEPersistentDiskVolumeSource, nilable: true, key: gcePersistentDisk, getter: false, setter: false},
                git_repo:                {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::GitRepoVolumeSource, nilable: true, key: gitRepo, getter: false, setter: false},
                glusterfs:               {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::GlusterfsVolumeSource, nilable: true, key: glusterfs, getter: false, setter: false},
                host_path:               {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::HostPathVolumeSource, nilable: true, key: hostPath, getter: false, setter: false},
                iscsi:                   {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ISCSIVolumeSource, nilable: true, key: iscsi, getter: false, setter: false},
                name:                    {type: String, nilable: false, key: name, getter: false, setter: false},
                nfs:                     {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::NFSVolumeSource, nilable: true, key: nfs, getter: false, setter: false},
                persistent_volume_claim: {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource, nilable: true, key: persistentVolumeClaim, getter: false, setter: false},
                photon_persistent_disk:  {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource, nilable: true, key: photonPersistentDisk, getter: false, setter: false},
                portworx_volume:         {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::PortworxVolumeSource, nilable: true, key: portworxVolume, getter: false, setter: false},
                projected:               {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ProjectedVolumeSource, nilable: true, key: projected, getter: false, setter: false},
                quobyte:                 {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::QuobyteVolumeSource, nilable: true, key: quobyte, getter: false, setter: false},
                rbd:                     {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::RBDVolumeSource, nilable: true, key: rbd, getter: false, setter: false},
                scale_io:                {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ScaleIOVolumeSource, nilable: true, key: scaleIO, getter: false, setter: false},
                secret:                  {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::SecretVolumeSource, nilable: true, key: secret, getter: false, setter: false},
                vsphere_volume:          {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource, nilable: true, key: vsphereVolume, getter: false, setter: false}}, true)

  def initialize(@name, @aws_elastic_block_store = nil, @azure_disk = nil, @azure_file = nil, @cephfs = nil, @cinder = nil, @config_map = nil, @downward_api = nil, @empty_dir = nil, @fc = nil, @flex_volume = nil, @flocker = nil, @gce_persistent_disk = nil, @git_repo = nil, @glusterfs = nil, @host_path = nil, @iscsi = nil, @nfs = nil, @persistent_volume_claim = nil, @photon_persistent_disk = nil, @portworx_volume = nil, @projected = nil, @quobyte = nil, @rbd = nil, @scale_io = nil, @secret = nil, @vsphere_volume = nil)
  end
end
