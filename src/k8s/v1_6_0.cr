# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

# Kubernetes vv1.6.0
class K8S::V1_6_0
  def self.get_definition(name : String)
    case name
    when "io.k8s.apimachinery.pkg.api.resource.Quantity"
      ::K8S::V1_6_0::Apimachinery::Api::Resource::Quantity
    when "io.k8s.apimachinery.pkg.apis.meta.v1.APIGroup"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::APIGroup
    when "io.k8s.apimachinery.pkg.apis.meta.v1.APIGroupList"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::APIGroupList
    when "io.k8s.apimachinery.pkg.apis.meta.v1.APIResource"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::APIResource
    when "io.k8s.apimachinery.pkg.apis.meta.v1.APIResourceList"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::APIResourceList
    when "io.k8s.apimachinery.pkg.apis.meta.v1.APIVersions"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::APIVersions
    when "io.k8s.apimachinery.pkg.apis.meta.v1.DeleteOptions"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::DeleteOptions
    when "io.k8s.apimachinery.pkg.apis.meta.v1.GroupVersionForDiscovery"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery
    when "io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelector"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::LabelSelector
    when "io.k8s.apimachinery.pkg.apis.meta.v1.LabelSelectorRequirement"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::LabelSelectorRequirement
    when "io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta
    when "io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta
    when "io.k8s.apimachinery.pkg.apis.meta.v1.OwnerReference"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::OwnerReference
    when "io.k8s.apimachinery.pkg.apis.meta.v1.Patch"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Patch
    when "io.k8s.apimachinery.pkg.apis.meta.v1.Preconditions"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Preconditions
    when "io.k8s.apimachinery.pkg.apis.meta.v1.ServerAddressByClientCIDR"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ServerAddressByClientCIDR
    when "io.k8s.apimachinery.pkg.apis.meta.v1.Status"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Status
    when "io.k8s.apimachinery.pkg.apis.meta.v1.StatusCause"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::StatusCause
    when "io.k8s.apimachinery.pkg.apis.meta.v1.StatusDetails"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::StatusDetails
    when "io.k8s.apimachinery.pkg.apis.meta.v1.Time"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Time
    when "io.k8s.apimachinery.pkg.apis.meta.v1.WatchEvent"
      ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::WatchEvent
    when "io.k8s.apimachinery.pkg.runtime.RawExtension"
      ::K8S::V1_6_0::Apimachinery::Runtime::RawExtension
    when "io.k8s.apimachinery.pkg.util.intstr.IntOrString"
      ::K8S::V1_6_0::Apimachinery::Util::Intstr::IntOrString
    when "io.k8s.apimachinery.pkg.version.Info"
      ::K8S::V1_6_0::Apimachinery::Version::Info
    when "io.k8s.kubernetes.pkg.api.v1.AWSElasticBlockStoreVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::AWSElasticBlockStoreVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.Affinity"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Affinity
    when "io.k8s.kubernetes.pkg.api.v1.AttachedVolume"
      ::K8S::V1_6_0::Kubernetes::Api::V1::AttachedVolume
    when "io.k8s.kubernetes.pkg.api.v1.AzureDiskVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::AzureDiskVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.AzureFileVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::AzureFileVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.Binding"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Binding
    when "io.k8s.kubernetes.pkg.api.v1.Capabilities"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Capabilities
    when "io.k8s.kubernetes.pkg.api.v1.CephFSVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::CephFSVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.CinderVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::CinderVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.ComponentCondition"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ComponentCondition
    when "io.k8s.kubernetes.pkg.api.v1.ComponentStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ComponentStatus
    when "io.k8s.kubernetes.pkg.api.v1.ComponentStatusList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ComponentStatusList
    when "io.k8s.kubernetes.pkg.api.v1.ConfigMap"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ConfigMap
    when "io.k8s.kubernetes.pkg.api.v1.ConfigMapEnvSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ConfigMapEnvSource
    when "io.k8s.kubernetes.pkg.api.v1.ConfigMapKeySelector"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ConfigMapKeySelector
    when "io.k8s.kubernetes.pkg.api.v1.ConfigMapList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ConfigMapList
    when "io.k8s.kubernetes.pkg.api.v1.ConfigMapProjection"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ConfigMapProjection
    when "io.k8s.kubernetes.pkg.api.v1.ConfigMapVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ConfigMapVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.Container"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Container
    when "io.k8s.kubernetes.pkg.api.v1.ContainerImage"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerImage
    when "io.k8s.kubernetes.pkg.api.v1.ContainerPort"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerPort
    when "io.k8s.kubernetes.pkg.api.v1.ContainerState"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerState
    when "io.k8s.kubernetes.pkg.api.v1.ContainerStateRunning"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateRunning
    when "io.k8s.kubernetes.pkg.api.v1.ContainerStateTerminated"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateTerminated
    when "io.k8s.kubernetes.pkg.api.v1.ContainerStateWaiting"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateWaiting
    when "io.k8s.kubernetes.pkg.api.v1.ContainerStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStatus
    when "io.k8s.kubernetes.pkg.api.v1.DaemonEndpoint"
      ::K8S::V1_6_0::Kubernetes::Api::V1::DaemonEndpoint
    when "io.k8s.kubernetes.pkg.api.v1.DownwardAPIProjection"
      ::K8S::V1_6_0::Kubernetes::Api::V1::DownwardAPIProjection
    when "io.k8s.kubernetes.pkg.api.v1.DownwardAPIVolumeFile"
      ::K8S::V1_6_0::Kubernetes::Api::V1::DownwardAPIVolumeFile
    when "io.k8s.kubernetes.pkg.api.v1.DownwardAPIVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::DownwardAPIVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.EmptyDirVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::EmptyDirVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.EndpointAddress"
      ::K8S::V1_6_0::Kubernetes::Api::V1::EndpointAddress
    when "io.k8s.kubernetes.pkg.api.v1.EndpointPort"
      ::K8S::V1_6_0::Kubernetes::Api::V1::EndpointPort
    when "io.k8s.kubernetes.pkg.api.v1.EndpointSubset"
      ::K8S::V1_6_0::Kubernetes::Api::V1::EndpointSubset
    when "io.k8s.kubernetes.pkg.api.v1.Endpoints"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Endpoints
    when "io.k8s.kubernetes.pkg.api.v1.EndpointsList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::EndpointsList
    when "io.k8s.kubernetes.pkg.api.v1.EnvFromSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::EnvFromSource
    when "io.k8s.kubernetes.pkg.api.v1.EnvVar"
      ::K8S::V1_6_0::Kubernetes::Api::V1::EnvVar
    when "io.k8s.kubernetes.pkg.api.v1.EnvVarSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::EnvVarSource
    when "io.k8s.kubernetes.pkg.api.v1.Event"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Event
    when "io.k8s.kubernetes.pkg.api.v1.EventList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::EventList
    when "io.k8s.kubernetes.pkg.api.v1.EventSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::EventSource
    when "io.k8s.kubernetes.pkg.api.v1.ExecAction"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ExecAction
    when "io.k8s.kubernetes.pkg.api.v1.FCVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::FCVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.FlexVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::FlexVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.FlockerVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::FlockerVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.GCEPersistentDiskVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::GCEPersistentDiskVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.GitRepoVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::GitRepoVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.GlusterfsVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::GlusterfsVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.HTTPGetAction"
      ::K8S::V1_6_0::Kubernetes::Api::V1::HTTPGetAction
    when "io.k8s.kubernetes.pkg.api.v1.HTTPHeader"
      ::K8S::V1_6_0::Kubernetes::Api::V1::HTTPHeader
    when "io.k8s.kubernetes.pkg.api.v1.Handler"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Handler
    when "io.k8s.kubernetes.pkg.api.v1.HostPathVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::HostPathVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.ISCSIVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ISCSIVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.KeyToPath"
      ::K8S::V1_6_0::Kubernetes::Api::V1::KeyToPath
    when "io.k8s.kubernetes.pkg.api.v1.Lifecycle"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Lifecycle
    when "io.k8s.kubernetes.pkg.api.v1.LimitRange"
      ::K8S::V1_6_0::Kubernetes::Api::V1::LimitRange
    when "io.k8s.kubernetes.pkg.api.v1.LimitRangeItem"
      ::K8S::V1_6_0::Kubernetes::Api::V1::LimitRangeItem
    when "io.k8s.kubernetes.pkg.api.v1.LimitRangeList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::LimitRangeList
    when "io.k8s.kubernetes.pkg.api.v1.LimitRangeSpec"
      ::K8S::V1_6_0::Kubernetes::Api::V1::LimitRangeSpec
    when "io.k8s.kubernetes.pkg.api.v1.LoadBalancerIngress"
      ::K8S::V1_6_0::Kubernetes::Api::V1::LoadBalancerIngress
    when "io.k8s.kubernetes.pkg.api.v1.LoadBalancerStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::LoadBalancerStatus
    when "io.k8s.kubernetes.pkg.api.v1.LocalObjectReference"
      ::K8S::V1_6_0::Kubernetes::Api::V1::LocalObjectReference
    when "io.k8s.kubernetes.pkg.api.v1.NFSVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NFSVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.Namespace"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Namespace
    when "io.k8s.kubernetes.pkg.api.v1.NamespaceList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NamespaceList
    when "io.k8s.kubernetes.pkg.api.v1.NamespaceSpec"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NamespaceSpec
    when "io.k8s.kubernetes.pkg.api.v1.NamespaceStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NamespaceStatus
    when "io.k8s.kubernetes.pkg.api.v1.Node"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Node
    when "io.k8s.kubernetes.pkg.api.v1.NodeAddress"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeAddress
    when "io.k8s.kubernetes.pkg.api.v1.NodeAffinity"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeAffinity
    when "io.k8s.kubernetes.pkg.api.v1.NodeCondition"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeCondition
    when "io.k8s.kubernetes.pkg.api.v1.NodeDaemonEndpoints"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeDaemonEndpoints
    when "io.k8s.kubernetes.pkg.api.v1.NodeList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeList
    when "io.k8s.kubernetes.pkg.api.v1.NodeSelector"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSelector
    when "io.k8s.kubernetes.pkg.api.v1.NodeSelectorRequirement"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSelectorRequirement
    when "io.k8s.kubernetes.pkg.api.v1.NodeSelectorTerm"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSelectorTerm
    when "io.k8s.kubernetes.pkg.api.v1.NodeSpec"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSpec
    when "io.k8s.kubernetes.pkg.api.v1.NodeStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeStatus
    when "io.k8s.kubernetes.pkg.api.v1.NodeSystemInfo"
      ::K8S::V1_6_0::Kubernetes::Api::V1::NodeSystemInfo
    when "io.k8s.kubernetes.pkg.api.v1.ObjectFieldSelector"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ObjectFieldSelector
    when "io.k8s.kubernetes.pkg.api.v1.ObjectReference"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ObjectReference
    when "io.k8s.kubernetes.pkg.api.v1.PersistentVolume"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PersistentVolume
    when "io.k8s.kubernetes.pkg.api.v1.PersistentVolumeClaim"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaim
    when "io.k8s.kubernetes.pkg.api.v1.PersistentVolumeClaimList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimList
    when "io.k8s.kubernetes.pkg.api.v1.PersistentVolumeClaimSpec"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimSpec
    when "io.k8s.kubernetes.pkg.api.v1.PersistentVolumeClaimStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimStatus
    when "io.k8s.kubernetes.pkg.api.v1.PersistentVolumeClaimVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PersistentVolumeClaimVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.PersistentVolumeList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PersistentVolumeList
    when "io.k8s.kubernetes.pkg.api.v1.PersistentVolumeSpec"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PersistentVolumeSpec
    when "io.k8s.kubernetes.pkg.api.v1.PersistentVolumeStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PersistentVolumeStatus
    when "io.k8s.kubernetes.pkg.api.v1.PhotonPersistentDiskVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PhotonPersistentDiskVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.Pod"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Pod
    when "io.k8s.kubernetes.pkg.api.v1.PodAffinity"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodAffinity
    when "io.k8s.kubernetes.pkg.api.v1.PodAffinityTerm"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodAffinityTerm
    when "io.k8s.kubernetes.pkg.api.v1.PodAntiAffinity"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodAntiAffinity
    when "io.k8s.kubernetes.pkg.api.v1.PodCondition"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodCondition
    when "io.k8s.kubernetes.pkg.api.v1.PodList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodList
    when "io.k8s.kubernetes.pkg.api.v1.PodSecurityContext"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodSecurityContext
    when "io.k8s.kubernetes.pkg.api.v1.PodSpec"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodSpec
    when "io.k8s.kubernetes.pkg.api.v1.PodStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodStatus
    when "io.k8s.kubernetes.pkg.api.v1.PodTemplate"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodTemplate
    when "io.k8s.kubernetes.pkg.api.v1.PodTemplateList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodTemplateList
    when "io.k8s.kubernetes.pkg.api.v1.PodTemplateSpec"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PodTemplateSpec
    when "io.k8s.kubernetes.pkg.api.v1.PortworxVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PortworxVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.PreferredSchedulingTerm"
      ::K8S::V1_6_0::Kubernetes::Api::V1::PreferredSchedulingTerm
    when "io.k8s.kubernetes.pkg.api.v1.Probe"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Probe
    when "io.k8s.kubernetes.pkg.api.v1.ProjectedVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ProjectedVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.QuobyteVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::QuobyteVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.RBDVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::RBDVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.ReplicationController"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationController
    when "io.k8s.kubernetes.pkg.api.v1.ReplicationControllerCondition"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationControllerCondition
    when "io.k8s.kubernetes.pkg.api.v1.ReplicationControllerList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationControllerList
    when "io.k8s.kubernetes.pkg.api.v1.ReplicationControllerSpec"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationControllerSpec
    when "io.k8s.kubernetes.pkg.api.v1.ReplicationControllerStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ReplicationControllerStatus
    when "io.k8s.kubernetes.pkg.api.v1.ResourceFieldSelector"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceFieldSelector
    when "io.k8s.kubernetes.pkg.api.v1.ResourceQuota"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuota
    when "io.k8s.kubernetes.pkg.api.v1.ResourceQuotaList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuotaList
    when "io.k8s.kubernetes.pkg.api.v1.ResourceQuotaSpec"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuotaSpec
    when "io.k8s.kubernetes.pkg.api.v1.ResourceQuotaStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceQuotaStatus
    when "io.k8s.kubernetes.pkg.api.v1.ResourceRequirements"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ResourceRequirements
    when "io.k8s.kubernetes.pkg.api.v1.SELinuxOptions"
      ::K8S::V1_6_0::Kubernetes::Api::V1::SELinuxOptions
    when "io.k8s.kubernetes.pkg.api.v1.ScaleIOVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ScaleIOVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.Secret"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Secret
    when "io.k8s.kubernetes.pkg.api.v1.SecretEnvSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::SecretEnvSource
    when "io.k8s.kubernetes.pkg.api.v1.SecretKeySelector"
      ::K8S::V1_6_0::Kubernetes::Api::V1::SecretKeySelector
    when "io.k8s.kubernetes.pkg.api.v1.SecretList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::SecretList
    when "io.k8s.kubernetes.pkg.api.v1.SecretProjection"
      ::K8S::V1_6_0::Kubernetes::Api::V1::SecretProjection
    when "io.k8s.kubernetes.pkg.api.v1.SecretVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::SecretVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.SecurityContext"
      ::K8S::V1_6_0::Kubernetes::Api::V1::SecurityContext
    when "io.k8s.kubernetes.pkg.api.v1.Service"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Service
    when "io.k8s.kubernetes.pkg.api.v1.ServiceAccount"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ServiceAccount
    when "io.k8s.kubernetes.pkg.api.v1.ServiceAccountList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ServiceAccountList
    when "io.k8s.kubernetes.pkg.api.v1.ServiceList"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ServiceList
    when "io.k8s.kubernetes.pkg.api.v1.ServicePort"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ServicePort
    when "io.k8s.kubernetes.pkg.api.v1.ServiceSpec"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ServiceSpec
    when "io.k8s.kubernetes.pkg.api.v1.ServiceStatus"
      ::K8S::V1_6_0::Kubernetes::Api::V1::ServiceStatus
    when "io.k8s.kubernetes.pkg.api.v1.TCPSocketAction"
      ::K8S::V1_6_0::Kubernetes::Api::V1::TCPSocketAction
    when "io.k8s.kubernetes.pkg.api.v1.Taint"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Taint
    when "io.k8s.kubernetes.pkg.api.v1.Toleration"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Toleration
    when "io.k8s.kubernetes.pkg.api.v1.Volume"
      ::K8S::V1_6_0::Kubernetes::Api::V1::Volume
    when "io.k8s.kubernetes.pkg.api.v1.VolumeMount"
      ::K8S::V1_6_0::Kubernetes::Api::V1::VolumeMount
    when "io.k8s.kubernetes.pkg.api.v1.VolumeProjection"
      ::K8S::V1_6_0::Kubernetes::Api::V1::VolumeProjection
    when "io.k8s.kubernetes.pkg.api.v1.VsphereVirtualDiskVolumeSource"
      ::K8S::V1_6_0::Kubernetes::Api::V1::VsphereVirtualDiskVolumeSource
    when "io.k8s.kubernetes.pkg.api.v1.WeightedPodAffinityTerm"
      ::K8S::V1_6_0::Kubernetes::Api::V1::WeightedPodAffinityTerm
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.Deployment"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::Deployment
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.DeploymentCondition"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::DeploymentCondition
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.DeploymentList"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::DeploymentList
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.DeploymentRollback"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::DeploymentRollback
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.DeploymentSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::DeploymentSpec
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.DeploymentStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::DeploymentStatus
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.DeploymentStrategy"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::DeploymentStrategy
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.RollbackConfig"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::RollbackConfig
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.RollingUpdateDeployment"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::RollingUpdateDeployment
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.Scale"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::Scale
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.ScaleSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::ScaleSpec
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.ScaleStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::ScaleStatus
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.StatefulSet"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSet
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.StatefulSetList"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetList
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.StatefulSetSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetSpec
    when "io.k8s.kubernetes.pkg.apis.apps.v1beta1.StatefulSetStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Apps::V1beta1::StatefulSetStatus
    when "io.k8s.kubernetes.pkg.apis.authentication.v1.TokenReview"
      ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReview
    when "io.k8s.kubernetes.pkg.apis.authentication.v1.TokenReviewSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReviewSpec
    when "io.k8s.kubernetes.pkg.apis.authentication.v1.TokenReviewStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1::TokenReviewStatus
    when "io.k8s.kubernetes.pkg.apis.authentication.v1.UserInfo"
      ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1::UserInfo
    when "io.k8s.kubernetes.pkg.apis.authentication.v1beta1.TokenReview"
      ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::TokenReview
    when "io.k8s.kubernetes.pkg.apis.authentication.v1beta1.TokenReviewSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::TokenReviewSpec
    when "io.k8s.kubernetes.pkg.apis.authentication.v1beta1.TokenReviewStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::TokenReviewStatus
    when "io.k8s.kubernetes.pkg.apis.authentication.v1beta1.UserInfo"
      ::K8S::V1_6_0::Kubernetes::Apis::Authentication::V1beta1::UserInfo
    when "io.k8s.kubernetes.pkg.apis.authorization.v1.LocalSubjectAccessReview"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1::LocalSubjectAccessReview
    when "io.k8s.kubernetes.pkg.apis.authorization.v1.NonResourceAttributes"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1::NonResourceAttributes
    when "io.k8s.kubernetes.pkg.apis.authorization.v1.ResourceAttributes"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1::ResourceAttributes
    when "io.k8s.kubernetes.pkg.apis.authorization.v1.SelfSubjectAccessReview"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReview
    when "io.k8s.kubernetes.pkg.apis.authorization.v1.SelfSubjectAccessReviewSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1::SelfSubjectAccessReviewSpec
    when "io.k8s.kubernetes.pkg.apis.authorization.v1.SubjectAccessReview"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReview
    when "io.k8s.kubernetes.pkg.apis.authorization.v1.SubjectAccessReviewSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewSpec
    when "io.k8s.kubernetes.pkg.apis.authorization.v1.SubjectAccessReviewStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1::SubjectAccessReviewStatus
    when "io.k8s.kubernetes.pkg.apis.authorization.v1beta1.LocalSubjectAccessReview"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::LocalSubjectAccessReview
    when "io.k8s.kubernetes.pkg.apis.authorization.v1beta1.NonResourceAttributes"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::NonResourceAttributes
    when "io.k8s.kubernetes.pkg.apis.authorization.v1beta1.ResourceAttributes"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::ResourceAttributes
    when "io.k8s.kubernetes.pkg.apis.authorization.v1beta1.SelfSubjectAccessReview"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SelfSubjectAccessReview
    when "io.k8s.kubernetes.pkg.apis.authorization.v1beta1.SelfSubjectAccessReviewSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SelfSubjectAccessReviewSpec
    when "io.k8s.kubernetes.pkg.apis.authorization.v1beta1.SubjectAccessReview"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReview
    when "io.k8s.kubernetes.pkg.apis.authorization.v1beta1.SubjectAccessReviewSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewSpec
    when "io.k8s.kubernetes.pkg.apis.authorization.v1beta1.SubjectAccessReviewStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Authorization::V1beta1::SubjectAccessReviewStatus
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v1.CrossVersionObjectReference"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::CrossVersionObjectReference
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v1.HorizontalPodAutoscaler"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscaler
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v1.HorizontalPodAutoscalerList"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerList
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v1.HorizontalPodAutoscalerSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerSpec
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v1.HorizontalPodAutoscalerStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::HorizontalPodAutoscalerStatus
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v1.Scale"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::Scale
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v1.ScaleSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::ScaleSpec
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v1.ScaleStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V1::ScaleStatus
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.CrossVersionObjectReference"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.HorizontalPodAutoscaler"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscaler
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.HorizontalPodAutoscalerList"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerList
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.HorizontalPodAutoscalerSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerSpec
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.HorizontalPodAutoscalerStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::HorizontalPodAutoscalerStatus
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.MetricSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::MetricSpec
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.MetricStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::MetricStatus
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.ObjectMetricSource"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricSource
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.ObjectMetricStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::ObjectMetricStatus
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.PodsMetricSource"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricSource
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.PodsMetricStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::PodsMetricStatus
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.ResourceMetricSource"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::ResourceMetricSource
    when "io.k8s.kubernetes.pkg.apis.autoscaling.v2alpha1.ResourceMetricStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Autoscaling::V2alpha1::ResourceMetricStatus
    when "io.k8s.kubernetes.pkg.apis.batch.v1.Job"
      ::K8S::V1_6_0::Kubernetes::Apis::Batch::V1::Job
    when "io.k8s.kubernetes.pkg.apis.batch.v1.JobCondition"
      ::K8S::V1_6_0::Kubernetes::Apis::Batch::V1::JobCondition
    when "io.k8s.kubernetes.pkg.apis.batch.v1.JobList"
      ::K8S::V1_6_0::Kubernetes::Apis::Batch::V1::JobList
    when "io.k8s.kubernetes.pkg.apis.batch.v1.JobSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Batch::V1::JobSpec
    when "io.k8s.kubernetes.pkg.apis.batch.v1.JobStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Batch::V1::JobStatus
    when "io.k8s.kubernetes.pkg.apis.batch.v2alpha1.CronJob"
      ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJob
    when "io.k8s.kubernetes.pkg.apis.batch.v2alpha1.CronJobList"
      ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobList
    when "io.k8s.kubernetes.pkg.apis.batch.v2alpha1.CronJobSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobSpec
    when "io.k8s.kubernetes.pkg.apis.batch.v2alpha1.CronJobStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::CronJobStatus
    when "io.k8s.kubernetes.pkg.apis.batch.v2alpha1.JobTemplateSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Batch::V2alpha1::JobTemplateSpec
    when "io.k8s.kubernetes.pkg.apis.certificates.v1beta1.CertificateSigningRequest"
      ::K8S::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequest
    when "io.k8s.kubernetes.pkg.apis.certificates.v1beta1.CertificateSigningRequestCondition"
      ::K8S::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestCondition
    when "io.k8s.kubernetes.pkg.apis.certificates.v1beta1.CertificateSigningRequestList"
      ::K8S::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestList
    when "io.k8s.kubernetes.pkg.apis.certificates.v1beta1.CertificateSigningRequestSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestSpec
    when "io.k8s.kubernetes.pkg.apis.certificates.v1beta1.CertificateSigningRequestStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.APIVersion"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::APIVersion
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DaemonSet"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSet
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DaemonSetList"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetList
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DaemonSetSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetSpec
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DaemonSetStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetStatus
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DaemonSetUpdateStrategy"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DaemonSetUpdateStrategy
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.Deployment"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::Deployment
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DeploymentCondition"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DeploymentCondition
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DeploymentList"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DeploymentList
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DeploymentRollback"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DeploymentRollback
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DeploymentSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DeploymentSpec
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DeploymentStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DeploymentStatus
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.DeploymentStrategy"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::DeploymentStrategy
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.FSGroupStrategyOptions"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::FSGroupStrategyOptions
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.HTTPIngressPath"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::HTTPIngressPath
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.HTTPIngressRuleValue"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::HTTPIngressRuleValue
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.HostPortRange"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::HostPortRange
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.IDRange"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::IDRange
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.Ingress"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::Ingress
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.IngressBackend"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::IngressBackend
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.IngressList"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::IngressList
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.IngressRule"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::IngressRule
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.IngressSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::IngressSpec
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.IngressStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::IngressStatus
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.IngressTLS"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::IngressTLS
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.NetworkPolicy"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicy
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.NetworkPolicyIngressRule"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyIngressRule
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.NetworkPolicyList"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyList
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.NetworkPolicyPeer"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyPeer
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.NetworkPolicyPort"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicyPort
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.NetworkPolicySpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::NetworkPolicySpec
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.PodSecurityPolicy"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicy
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.PodSecurityPolicyList"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicyList
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.PodSecurityPolicySpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.ReplicaSet"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ReplicaSet
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.ReplicaSetCondition"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetCondition
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.ReplicaSetList"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetList
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.ReplicaSetSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetSpec
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.ReplicaSetStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ReplicaSetStatus
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.RollbackConfig"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::RollbackConfig
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.RollingUpdateDaemonSet"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDaemonSet
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.RollingUpdateDeployment"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDeployment
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.RunAsUserStrategyOptions"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::RunAsUserStrategyOptions
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.SELinuxStrategyOptions"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::SELinuxStrategyOptions
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.Scale"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::Scale
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.ScaleSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ScaleSpec
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.ScaleStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ScaleStatus
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.SupplementalGroupsStrategyOptions"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::SupplementalGroupsStrategyOptions
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.ThirdPartyResource"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResource
    when "io.k8s.kubernetes.pkg.apis.extensions.v1beta1.ThirdPartyResourceList"
      ::K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::ThirdPartyResourceList
    when "io.k8s.kubernetes.pkg.apis.policy.v1beta1.Eviction"
      ::K8S::V1_6_0::Kubernetes::Apis::Policy::V1beta1::Eviction
    when "io.k8s.kubernetes.pkg.apis.policy.v1beta1.PodDisruptionBudget"
      ::K8S::V1_6_0::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudget
    when "io.k8s.kubernetes.pkg.apis.policy.v1beta1.PodDisruptionBudgetList"
      ::K8S::V1_6_0::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetList
    when "io.k8s.kubernetes.pkg.apis.policy.v1beta1.PodDisruptionBudgetSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetSpec
    when "io.k8s.kubernetes.pkg.apis.policy.v1beta1.PodDisruptionBudgetStatus"
      ::K8S::V1_6_0::Kubernetes::Apis::Policy::V1beta1::PodDisruptionBudgetStatus
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.ClusterRole"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRole
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.ClusterRoleBinding"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBinding
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.ClusterRoleBindingList"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleBindingList
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.ClusterRoleList"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::ClusterRoleList
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.PolicyRule"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::PolicyRule
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.Role"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::Role
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.RoleBinding"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::RoleBinding
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.RoleBindingList"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::RoleBindingList
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.RoleList"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::RoleList
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.RoleRef"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::RoleRef
    when "io.k8s.kubernetes.pkg.apis.rbac.v1alpha1.Subject"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1alpha1::Subject
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.ClusterRole"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::ClusterRole
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.ClusterRoleBinding"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::ClusterRoleBinding
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.ClusterRoleBindingList"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::ClusterRoleBindingList
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.ClusterRoleList"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::ClusterRoleList
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.PolicyRule"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::PolicyRule
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.Role"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::Role
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.RoleBinding"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::RoleBinding
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.RoleBindingList"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::RoleBindingList
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.RoleList"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::RoleList
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.RoleRef"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::RoleRef
    when "io.k8s.kubernetes.pkg.apis.rbac.v1beta1.Subject"
      ::K8S::V1_6_0::Kubernetes::Apis::Rbac::V1beta1::Subject
    when "io.k8s.kubernetes.pkg.apis.settings.v1alpha1.PodPreset"
      ::K8S::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPreset
    when "io.k8s.kubernetes.pkg.apis.settings.v1alpha1.PodPresetList"
      ::K8S::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPresetList
    when "io.k8s.kubernetes.pkg.apis.settings.v1alpha1.PodPresetSpec"
      ::K8S::V1_6_0::Kubernetes::Apis::Settings::V1alpha1::PodPresetSpec
    when "io.k8s.kubernetes.pkg.apis.storage.v1.StorageClass"
      ::K8S::V1_6_0::Kubernetes::Apis::Storage::V1::StorageClass
    when "io.k8s.kubernetes.pkg.apis.storage.v1.StorageClassList"
      ::K8S::V1_6_0::Kubernetes::Apis::Storage::V1::StorageClassList
    when "io.k8s.kubernetes.pkg.apis.storage.v1beta1.StorageClass"
      ::K8S::V1_6_0::Kubernetes::Apis::Storage::V1beta1::StorageClass
    when "io.k8s.kubernetes.pkg.apis.storage.v1beta1.StorageClassList"
      ::K8S::V1_6_0::Kubernetes::Apis::Storage::V1beta1::StorageClassList
    else
      raise "Definition `#{name}` not found"
    end
  end
end

require "./v1_6_0/apimachinery/api/resource/quantity.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/api_group.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/api_group_list.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/api_resource.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/api_resource_list.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/api_versions.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/delete_options.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/group_version_for_discovery.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/label_selector.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/label_selector_requirement.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/list_meta.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/object_meta.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/owner_reference.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/patch.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/preconditions.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/server_address_by_client_cidr.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/status.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/status_cause.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/status_details.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/time.cr"
require "./v1_6_0/apimachinery/apis/meta/v1/watch_event.cr"
require "./v1_6_0/apimachinery/runtime/raw_extension.cr"
require "./v1_6_0/apimachinery/util/intstr/int_or_string.cr"
require "./v1_6_0/apimachinery/version/info.cr"
require "./v1_6_0/kubernetes/api/v1/aws_elastic_block_store_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/affinity.cr"
require "./v1_6_0/kubernetes/api/v1/attached_volume.cr"
require "./v1_6_0/kubernetes/api/v1/azure_disk_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/azure_file_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/binding.cr"
require "./v1_6_0/kubernetes/api/v1/capabilities.cr"
require "./v1_6_0/kubernetes/api/v1/ceph_fs_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/cinder_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/component_condition.cr"
require "./v1_6_0/kubernetes/api/v1/component_status.cr"
require "./v1_6_0/kubernetes/api/v1/component_status_list.cr"
require "./v1_6_0/kubernetes/api/v1/config_map.cr"
require "./v1_6_0/kubernetes/api/v1/config_map_env_source.cr"
require "./v1_6_0/kubernetes/api/v1/config_map_key_selector.cr"
require "./v1_6_0/kubernetes/api/v1/config_map_list.cr"
require "./v1_6_0/kubernetes/api/v1/config_map_projection.cr"
require "./v1_6_0/kubernetes/api/v1/config_map_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/container.cr"
require "./v1_6_0/kubernetes/api/v1/container_image.cr"
require "./v1_6_0/kubernetes/api/v1/container_port.cr"
require "./v1_6_0/kubernetes/api/v1/container_state.cr"
require "./v1_6_0/kubernetes/api/v1/container_state_running.cr"
require "./v1_6_0/kubernetes/api/v1/container_state_terminated.cr"
require "./v1_6_0/kubernetes/api/v1/container_state_waiting.cr"
require "./v1_6_0/kubernetes/api/v1/container_status.cr"
require "./v1_6_0/kubernetes/api/v1/daemon_endpoint.cr"
require "./v1_6_0/kubernetes/api/v1/downward_api_projection.cr"
require "./v1_6_0/kubernetes/api/v1/downward_api_volume_file.cr"
require "./v1_6_0/kubernetes/api/v1/downward_api_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/empty_dir_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/endpoint_address.cr"
require "./v1_6_0/kubernetes/api/v1/endpoint_port.cr"
require "./v1_6_0/kubernetes/api/v1/endpoint_subset.cr"
require "./v1_6_0/kubernetes/api/v1/endpoints.cr"
require "./v1_6_0/kubernetes/api/v1/endpoints_list.cr"
require "./v1_6_0/kubernetes/api/v1/env_from_source.cr"
require "./v1_6_0/kubernetes/api/v1/env_var.cr"
require "./v1_6_0/kubernetes/api/v1/env_var_source.cr"
require "./v1_6_0/kubernetes/api/v1/event.cr"
require "./v1_6_0/kubernetes/api/v1/event_list.cr"
require "./v1_6_0/kubernetes/api/v1/event_source.cr"
require "./v1_6_0/kubernetes/api/v1/exec_action.cr"
require "./v1_6_0/kubernetes/api/v1/fc_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/flex_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/flocker_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/gce_persistent_disk_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/git_repo_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/glusterfs_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/http_get_action.cr"
require "./v1_6_0/kubernetes/api/v1/http_header.cr"
require "./v1_6_0/kubernetes/api/v1/handler.cr"
require "./v1_6_0/kubernetes/api/v1/host_path_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/iscsi_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/key_to_path.cr"
require "./v1_6_0/kubernetes/api/v1/lifecycle.cr"
require "./v1_6_0/kubernetes/api/v1/limit_range.cr"
require "./v1_6_0/kubernetes/api/v1/limit_range_item.cr"
require "./v1_6_0/kubernetes/api/v1/limit_range_list.cr"
require "./v1_6_0/kubernetes/api/v1/limit_range_spec.cr"
require "./v1_6_0/kubernetes/api/v1/load_balancer_ingress.cr"
require "./v1_6_0/kubernetes/api/v1/load_balancer_status.cr"
require "./v1_6_0/kubernetes/api/v1/local_object_reference.cr"
require "./v1_6_0/kubernetes/api/v1/nfs_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/namespace.cr"
require "./v1_6_0/kubernetes/api/v1/namespace_list.cr"
require "./v1_6_0/kubernetes/api/v1/namespace_spec.cr"
require "./v1_6_0/kubernetes/api/v1/namespace_status.cr"
require "./v1_6_0/kubernetes/api/v1/node.cr"
require "./v1_6_0/kubernetes/api/v1/node_address.cr"
require "./v1_6_0/kubernetes/api/v1/node_affinity.cr"
require "./v1_6_0/kubernetes/api/v1/node_condition.cr"
require "./v1_6_0/kubernetes/api/v1/node_daemon_endpoints.cr"
require "./v1_6_0/kubernetes/api/v1/node_list.cr"
require "./v1_6_0/kubernetes/api/v1/node_selector.cr"
require "./v1_6_0/kubernetes/api/v1/node_selector_requirement.cr"
require "./v1_6_0/kubernetes/api/v1/node_selector_term.cr"
require "./v1_6_0/kubernetes/api/v1/node_spec.cr"
require "./v1_6_0/kubernetes/api/v1/node_status.cr"
require "./v1_6_0/kubernetes/api/v1/node_system_info.cr"
require "./v1_6_0/kubernetes/api/v1/object_field_selector.cr"
require "./v1_6_0/kubernetes/api/v1/object_reference.cr"
require "./v1_6_0/kubernetes/api/v1/persistent_volume.cr"
require "./v1_6_0/kubernetes/api/v1/persistent_volume_claim.cr"
require "./v1_6_0/kubernetes/api/v1/persistent_volume_claim_list.cr"
require "./v1_6_0/kubernetes/api/v1/persistent_volume_claim_spec.cr"
require "./v1_6_0/kubernetes/api/v1/persistent_volume_claim_status.cr"
require "./v1_6_0/kubernetes/api/v1/persistent_volume_claim_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/persistent_volume_list.cr"
require "./v1_6_0/kubernetes/api/v1/persistent_volume_spec.cr"
require "./v1_6_0/kubernetes/api/v1/persistent_volume_status.cr"
require "./v1_6_0/kubernetes/api/v1/photon_persistent_disk_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/pod.cr"
require "./v1_6_0/kubernetes/api/v1/pod_affinity.cr"
require "./v1_6_0/kubernetes/api/v1/pod_affinity_term.cr"
require "./v1_6_0/kubernetes/api/v1/pod_anti_affinity.cr"
require "./v1_6_0/kubernetes/api/v1/pod_condition.cr"
require "./v1_6_0/kubernetes/api/v1/pod_list.cr"
require "./v1_6_0/kubernetes/api/v1/pod_security_context.cr"
require "./v1_6_0/kubernetes/api/v1/pod_spec.cr"
require "./v1_6_0/kubernetes/api/v1/pod_status.cr"
require "./v1_6_0/kubernetes/api/v1/pod_template.cr"
require "./v1_6_0/kubernetes/api/v1/pod_template_list.cr"
require "./v1_6_0/kubernetes/api/v1/pod_template_spec.cr"
require "./v1_6_0/kubernetes/api/v1/portworx_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/preferred_scheduling_term.cr"
require "./v1_6_0/kubernetes/api/v1/probe.cr"
require "./v1_6_0/kubernetes/api/v1/projected_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/quobyte_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/rbd_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/replication_controller.cr"
require "./v1_6_0/kubernetes/api/v1/replication_controller_condition.cr"
require "./v1_6_0/kubernetes/api/v1/replication_controller_list.cr"
require "./v1_6_0/kubernetes/api/v1/replication_controller_spec.cr"
require "./v1_6_0/kubernetes/api/v1/replication_controller_status.cr"
require "./v1_6_0/kubernetes/api/v1/resource_field_selector.cr"
require "./v1_6_0/kubernetes/api/v1/resource_quota.cr"
require "./v1_6_0/kubernetes/api/v1/resource_quota_list.cr"
require "./v1_6_0/kubernetes/api/v1/resource_quota_spec.cr"
require "./v1_6_0/kubernetes/api/v1/resource_quota_status.cr"
require "./v1_6_0/kubernetes/api/v1/resource_requirements.cr"
require "./v1_6_0/kubernetes/api/v1/se_linux_options.cr"
require "./v1_6_0/kubernetes/api/v1/scale_io_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/secret.cr"
require "./v1_6_0/kubernetes/api/v1/secret_env_source.cr"
require "./v1_6_0/kubernetes/api/v1/secret_key_selector.cr"
require "./v1_6_0/kubernetes/api/v1/secret_list.cr"
require "./v1_6_0/kubernetes/api/v1/secret_projection.cr"
require "./v1_6_0/kubernetes/api/v1/secret_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/security_context.cr"
require "./v1_6_0/kubernetes/api/v1/service.cr"
require "./v1_6_0/kubernetes/api/v1/service_account.cr"
require "./v1_6_0/kubernetes/api/v1/service_account_list.cr"
require "./v1_6_0/kubernetes/api/v1/service_list.cr"
require "./v1_6_0/kubernetes/api/v1/service_port.cr"
require "./v1_6_0/kubernetes/api/v1/service_spec.cr"
require "./v1_6_0/kubernetes/api/v1/service_status.cr"
require "./v1_6_0/kubernetes/api/v1/tcp_socket_action.cr"
require "./v1_6_0/kubernetes/api/v1/taint.cr"
require "./v1_6_0/kubernetes/api/v1/toleration.cr"
require "./v1_6_0/kubernetes/api/v1/volume.cr"
require "./v1_6_0/kubernetes/api/v1/volume_mount.cr"
require "./v1_6_0/kubernetes/api/v1/volume_projection.cr"
require "./v1_6_0/kubernetes/api/v1/vsphere_virtual_disk_volume_source.cr"
require "./v1_6_0/kubernetes/api/v1/weighted_pod_affinity_term.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/deployment.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/deployment_condition.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/deployment_list.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/deployment_rollback.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/deployment_spec.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/deployment_status.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/deployment_strategy.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/rollback_config.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/rolling_update_deployment.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/scale.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/scale_spec.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/scale_status.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/stateful_set.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/stateful_set_list.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/stateful_set_spec.cr"
require "./v1_6_0/kubernetes/apis/apps/v1beta1/stateful_set_status.cr"
require "./v1_6_0/kubernetes/apis/authentication/v1/token_review.cr"
require "./v1_6_0/kubernetes/apis/authentication/v1/token_review_spec.cr"
require "./v1_6_0/kubernetes/apis/authentication/v1/token_review_status.cr"
require "./v1_6_0/kubernetes/apis/authentication/v1/user_info.cr"
require "./v1_6_0/kubernetes/apis/authentication/v1beta1/token_review.cr"
require "./v1_6_0/kubernetes/apis/authentication/v1beta1/token_review_spec.cr"
require "./v1_6_0/kubernetes/apis/authentication/v1beta1/token_review_status.cr"
require "./v1_6_0/kubernetes/apis/authentication/v1beta1/user_info.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1/local_subject_access_review.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1/non_resource_attributes.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1/resource_attributes.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1/self_subject_access_review.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1/self_subject_access_review_spec.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1/subject_access_review.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1/subject_access_review_spec.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1/subject_access_review_status.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1beta1/local_subject_access_review.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1beta1/non_resource_attributes.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1beta1/resource_attributes.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1beta1/self_subject_access_review.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1beta1/self_subject_access_review_spec.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1beta1/subject_access_review.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1beta1/subject_access_review_spec.cr"
require "./v1_6_0/kubernetes/apis/authorization/v1beta1/subject_access_review_status.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v1/cross_version_object_reference.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v1/horizontal_pod_autoscaler.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v1/horizontal_pod_autoscaler_list.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v1/horizontal_pod_autoscaler_spec.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v1/horizontal_pod_autoscaler_status.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v1/scale.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v1/scale_spec.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v1/scale_status.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/cross_version_object_reference.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/horizontal_pod_autoscaler.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/horizontal_pod_autoscaler_list.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/horizontal_pod_autoscaler_spec.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/horizontal_pod_autoscaler_status.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/metric_spec.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/metric_status.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/object_metric_source.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/object_metric_status.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/pods_metric_source.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/pods_metric_status.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/resource_metric_source.cr"
require "./v1_6_0/kubernetes/apis/autoscaling/v2alpha1/resource_metric_status.cr"
require "./v1_6_0/kubernetes/apis/batch/v1/job.cr"
require "./v1_6_0/kubernetes/apis/batch/v1/job_condition.cr"
require "./v1_6_0/kubernetes/apis/batch/v1/job_list.cr"
require "./v1_6_0/kubernetes/apis/batch/v1/job_spec.cr"
require "./v1_6_0/kubernetes/apis/batch/v1/job_status.cr"
require "./v1_6_0/kubernetes/apis/batch/v2alpha1/cron_job.cr"
require "./v1_6_0/kubernetes/apis/batch/v2alpha1/cron_job_list.cr"
require "./v1_6_0/kubernetes/apis/batch/v2alpha1/cron_job_spec.cr"
require "./v1_6_0/kubernetes/apis/batch/v2alpha1/cron_job_status.cr"
require "./v1_6_0/kubernetes/apis/batch/v2alpha1/job_template_spec.cr"
require "./v1_6_0/kubernetes/apis/certificates/v1beta1/certificate_signing_request.cr"
require "./v1_6_0/kubernetes/apis/certificates/v1beta1/certificate_signing_request_condition.cr"
require "./v1_6_0/kubernetes/apis/certificates/v1beta1/certificate_signing_request_list.cr"
require "./v1_6_0/kubernetes/apis/certificates/v1beta1/certificate_signing_request_spec.cr"
require "./v1_6_0/kubernetes/apis/certificates/v1beta1/certificate_signing_request_status.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/api_version.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/daemon_set.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/daemon_set_list.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/daemon_set_spec.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/daemon_set_status.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/daemon_set_update_strategy.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/deployment.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/deployment_condition.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/deployment_list.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/deployment_rollback.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/deployment_spec.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/deployment_status.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/deployment_strategy.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/fs_group_strategy_options.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/http_ingress_path.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/http_ingress_rule_value.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/host_port_range.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/id_range.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/ingress.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/ingress_backend.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/ingress_list.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/ingress_rule.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/ingress_spec.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/ingress_status.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/ingress_tls.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/network_policy.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/network_policy_ingress_rule.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/network_policy_list.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/network_policy_peer.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/network_policy_port.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/network_policy_spec.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/pod_security_policy.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/pod_security_policy_list.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/pod_security_policy_spec.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/replica_set.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/replica_set_condition.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/replica_set_list.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/replica_set_spec.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/replica_set_status.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/rollback_config.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/rolling_update_daemon_set.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/rolling_update_deployment.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/run_as_user_strategy_options.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/se_linux_strategy_options.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/scale.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/scale_spec.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/scale_status.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/supplemental_groups_strategy_options.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/third_party_resource.cr"
require "./v1_6_0/kubernetes/apis/extensions/v1beta1/third_party_resource_list.cr"
require "./v1_6_0/kubernetes/apis/policy/v1beta1/eviction.cr"
require "./v1_6_0/kubernetes/apis/policy/v1beta1/pod_disruption_budget.cr"
require "./v1_6_0/kubernetes/apis/policy/v1beta1/pod_disruption_budget_list.cr"
require "./v1_6_0/kubernetes/apis/policy/v1beta1/pod_disruption_budget_spec.cr"
require "./v1_6_0/kubernetes/apis/policy/v1beta1/pod_disruption_budget_status.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/cluster_role.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/cluster_role_binding.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/cluster_role_binding_list.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/cluster_role_list.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/policy_rule.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/role.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/role_binding.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/role_binding_list.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/role_list.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/role_ref.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1alpha1/subject.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/cluster_role.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/cluster_role_binding.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/cluster_role_binding_list.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/cluster_role_list.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/policy_rule.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/role.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/role_binding.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/role_binding_list.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/role_list.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/role_ref.cr"
require "./v1_6_0/kubernetes/apis/rbac/v1beta1/subject.cr"
require "./v1_6_0/kubernetes/apis/settings/v1alpha1/pod_preset.cr"
require "./v1_6_0/kubernetes/apis/settings/v1alpha1/pod_preset_list.cr"
require "./v1_6_0/kubernetes/apis/settings/v1alpha1/pod_preset_spec.cr"
require "./v1_6_0/kubernetes/apis/storage/v1/storage_class.cr"
require "./v1_6_0/kubernetes/apis/storage/v1/storage_class_list.cr"
require "./v1_6_0/kubernetes/apis/storage/v1beta1/storage_class.cr"
require "./v1_6_0/kubernetes/apis/storage/v1beta1/storage_class_list.cr"
