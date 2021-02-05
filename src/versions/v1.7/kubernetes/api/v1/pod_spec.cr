# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodSpec is a description of a pod.
  class Kubernetes::Api::V1::PodSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
    @[JSON::Field(key: "activeDeadlineSeconds")]
    @[YAML::Field(key: "activeDeadlineSeconds")]
    property active_deadline_seconds : Int32 | Nil

    # If specified, the pod's scheduling constraints
    @[JSON::Field(key: "affinity")]
    @[YAML::Field(key: "affinity")]
    property affinity : Kubernetes::Api::V1::Affinity | Nil

    # AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
    @[JSON::Field(key: "automountServiceAccountToken")]
    @[YAML::Field(key: "automountServiceAccountToken")]
    property automount_service_account_token : Bool | Nil

    # List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
    @[JSON::Field(key: "containers")]
    @[YAML::Field(key: "containers")]
    property containers : Array(Kubernetes::Api::V1::Container)

    # Set DNS policy for containers within the pod. One of 'ClusterFirstWithHostNet', 'ClusterFirst' or 'Default'. Defaults to "ClusterFirst". To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
    @[JSON::Field(key: "dnsPolicy")]
    @[YAML::Field(key: "dnsPolicy")]
    property dns_policy : String | Nil

    # HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
    @[JSON::Field(key: "hostAliases")]
    @[YAML::Field(key: "hostAliases")]
    property host_aliases : Array(Kubernetes::Api::V1::HostAlias) | Nil

    # Use the host's ipc namespace. Optional: Default to false.
    @[JSON::Field(key: "hostIPC")]
    @[YAML::Field(key: "hostIPC")]
    property host_ipc : Bool | Nil

    # Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
    @[JSON::Field(key: "hostNetwork")]
    @[YAML::Field(key: "hostNetwork")]
    property host_network : Bool | Nil

    # Use the host's pid namespace. Optional: Default to false.
    @[JSON::Field(key: "hostPID")]
    @[YAML::Field(key: "hostPID")]
    property host_pid : Bool | Nil

    # Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
    @[JSON::Field(key: "hostname")]
    @[YAML::Field(key: "hostname")]
    property hostname : String | Nil

    # ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: [https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod)
    @[JSON::Field(key: "imagePullSecrets")]
    @[YAML::Field(key: "imagePullSecrets")]
    property image_pull_secrets : Array(Kubernetes::Api::V1::LocalObjectReference) | Nil

    # List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest [request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)
    @[JSON::Field(key: "initContainers")]
    @[YAML::Field(key: "initContainers")]
    property init_containers : Array(Kubernetes::Api::V1::Container) | Nil

    # NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
    @[JSON::Field(key: "nodeName")]
    @[YAML::Field(key: "nodeName")]
    property node_name : String | Nil

    # NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: [https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/)
    @[JSON::Field(key: "nodeSelector")]
    @[YAML::Field(key: "nodeSelector")]
    property node_selector : Hash(String, String) | Nil

    # Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy)
    @[JSON::Field(key: "restartPolicy")]
    @[YAML::Field(key: "restartPolicy")]
    property restart_policy : String | Nil

    # If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
    @[JSON::Field(key: "schedulerName")]
    @[YAML::Field(key: "schedulerName")]
    property scheduler_name : String | Nil

    # SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
    @[JSON::Field(key: "securityContext")]
    @[YAML::Field(key: "securityContext")]
    property security_context : Kubernetes::Api::V1::PodSecurityContext | Nil

    # DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
    @[JSON::Field(key: "serviceAccount")]
    @[YAML::Field(key: "serviceAccount")]
    property service_account : String | Nil

    # ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: [https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)
    @[JSON::Field(key: "serviceAccountName")]
    @[YAML::Field(key: "serviceAccountName")]
    property service_account_name : String | Nil

    # If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
    @[JSON::Field(key: "subdomain")]
    @[YAML::Field(key: "subdomain")]
    property subdomain : String | Nil

    # Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
    @[JSON::Field(key: "terminationGracePeriodSeconds")]
    @[YAML::Field(key: "terminationGracePeriodSeconds")]
    property termination_grace_period_seconds : Int32 | Nil

    # If specified, the pod's tolerations.
    @[JSON::Field(key: "tolerations")]
    @[YAML::Field(key: "tolerations")]
    property tolerations : Array(Kubernetes::Api::V1::Toleration) | Nil

    # List of volumes that can be mounted by containers belonging to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes)
    @[JSON::Field(key: "volumes")]
    @[YAML::Field(key: "volumes")]
    property volumes : Array(Kubernetes::Api::V1::Volume) | Nil

    def initialize(*, @active_deadline_seconds : Int32 | Nil = nil, @affinity : Kubernetes::Api::V1::Affinity | Nil = nil, @automount_service_account_token : Bool | Nil = nil, @containers : Array, @dns_policy : String | Nil = nil, @host_aliases : Array | Nil = nil, @host_ipc : Bool | Nil = nil, @host_network : Bool | Nil = nil, @host_pid : Bool | Nil = nil, @hostname : String | Nil = nil, @image_pull_secrets : Array | Nil = nil, @init_containers : Array | Nil = nil, @node_name : String | Nil = nil, @node_selector : Hash(String, String) | Nil = nil, @restart_policy : String | Nil = nil, @scheduler_name : String | Nil = nil, @security_context : Kubernetes::Api::V1::PodSecurityContext | Nil = nil, @service_account : String | Nil = nil, @service_account_name : String | Nil = nil, @subdomain : String | Nil = nil, @termination_grace_period_seconds : Int32 | Nil = nil, @tolerations : Array | Nil = nil, @volumes : Array | Nil = nil)
    end
  end
end
