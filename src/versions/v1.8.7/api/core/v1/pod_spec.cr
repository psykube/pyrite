# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodSpec is a description of a pod.
  class Api::Core::V1::PodSpec
    # Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
    property active_deadline_seconds : Int32 | Nil

    # If specified, the pod's scheduling constraints
    property affinity : Api::Core::V1::Affinity | Nil

    # AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
    property automount_service_account_token : Bool | Nil

    # List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated.
    property containers : Array(Api::Core::V1::Container)

    # Set DNS policy for containers within the pod. One of 'ClusterFirstWithHostNet', 'ClusterFirst' or 'Default'. Defaults to "ClusterFirst". To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
    property dns_policy : String | Nil

    # HostAliases is an optional list of hosts and IPs that will be injected into the pod's hosts file if specified. This is only valid for non-hostNetwork pods.
    property host_aliases : Array(Api::Core::V1::HostAlias) | Nil

    # Use the host's ipc namespace. Optional: Default to false.
    property host_ipc : Bool | Nil

    # Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
    property host_network : Bool | Nil

    # Use the host's pid namespace. Optional: Default to false.
    property host_pid : Bool | Nil

    # Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
    property hostname : String | Nil

    # ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: [https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod](https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod)
    property image_pull_secrets : Array(Api::Core::V1::LocalObjectReference) | Nil

    # List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest [request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/)
    property init_containers : Array(Api::Core::V1::Container) | Nil

    # NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
    property node_name : String | Nil

    # NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: [https://kubernetes.io/docs/concepts/configuration/assign-pod-node/](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/)
    property node_selector : Hash(String, String) | Nil

    # The priority value. Various system components use this field to find the priority of the pod. When Priority Admission Controller is enabled, it prevents users from setting this field. The admission controller populates this field from PriorityClassName. The higher the value, the higher the priority.
    property priority : Int32 | Nil

    # If specified, indicates the pod's priority. "SYSTEM" is a special keyword which indicates the highest priority. Any other name must be defined by creating a PriorityClass object with that name. If not specified, the pod priority will be default or zero if there is no default.
    property priority_class_name : String | Nil

    # Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy)
    property restart_policy : String | Nil

    # If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
    property scheduler_name : String | Nil

    # SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
    property security_context : Api::Core::V1::PodSecurityContext | Nil

    # DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
    property service_account : String | Nil

    # ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: [https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/)
    property service_account_name : String | Nil

    # If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
    property subdomain : String | Nil

    # Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
    property termination_grace_period_seconds : Int32 | Nil

    # If specified, the pod's tolerations.
    property tolerations : Array(Api::Core::V1::Toleration) | Nil

    # List of volumes that can be mounted by containers belonging to the pod. More info: [https://kubernetes.io/docs/concepts/storage/volumes](https://kubernetes.io/docs/concepts/storage/volumes)
    property volumes : Array(Api::Core::V1::Volume) | Nil

    ::YAML.mapping({
      active_deadline_seconds:          {type: Int32, nilable: true, key: "activeDeadlineSeconds", getter: false, setter: false},
      affinity:                         {type: Api::Core::V1::Affinity, nilable: true, key: "affinity", getter: false, setter: false},
      automount_service_account_token:  {type: Bool, nilable: true, key: "automountServiceAccountToken", getter: false, setter: false},
      containers:                       {type: Array(Api::Core::V1::Container), nilable: false, key: "containers", getter: false, setter: false},
      dns_policy:                       {type: String, nilable: true, key: "dnsPolicy", getter: false, setter: false},
      host_aliases:                     {type: Array(Api::Core::V1::HostAlias), nilable: true, key: "hostAliases", getter: false, setter: false},
      host_ipc:                         {type: Bool, nilable: true, key: "hostIPC", getter: false, setter: false},
      host_network:                     {type: Bool, nilable: true, key: "hostNetwork", getter: false, setter: false},
      host_pid:                         {type: Bool, nilable: true, key: "hostPID", getter: false, setter: false},
      hostname:                         {type: String, nilable: true, key: "hostname", getter: false, setter: false},
      image_pull_secrets:               {type: Array(Api::Core::V1::LocalObjectReference), nilable: true, key: "imagePullSecrets", getter: false, setter: false},
      init_containers:                  {type: Array(Api::Core::V1::Container), nilable: true, key: "initContainers", getter: false, setter: false},
      node_name:                        {type: String, nilable: true, key: "nodeName", getter: false, setter: false},
      node_selector:                    {type: Hash(String, String), nilable: true, key: "nodeSelector", getter: false, setter: false},
      priority:                         {type: Int32, nilable: true, key: "priority", getter: false, setter: false},
      priority_class_name:              {type: String, nilable: true, key: "priorityClassName", getter: false, setter: false},
      restart_policy:                   {type: String, nilable: true, key: "restartPolicy", getter: false, setter: false},
      scheduler_name:                   {type: String, nilable: true, key: "schedulerName", getter: false, setter: false},
      security_context:                 {type: Api::Core::V1::PodSecurityContext, nilable: true, key: "securityContext", getter: false, setter: false},
      service_account:                  {type: String, nilable: true, key: "serviceAccount", getter: false, setter: false},
      service_account_name:             {type: String, nilable: true, key: "serviceAccountName", getter: false, setter: false},
      subdomain:                        {type: String, nilable: true, key: "subdomain", getter: false, setter: false},
      termination_grace_period_seconds: {type: Int32, nilable: true, key: "terminationGracePeriodSeconds", getter: false, setter: false},
      tolerations:                      {type: Array(Api::Core::V1::Toleration), nilable: true, key: "tolerations", getter: false, setter: false},
      volumes:                          {type: Array(Api::Core::V1::Volume), nilable: true, key: "volumes", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      active_deadline_seconds:          {type: Int32, nilable: true, key: "activeDeadlineSeconds", getter: false, setter: false},
      affinity:                         {type: Api::Core::V1::Affinity, nilable: true, key: "affinity", getter: false, setter: false},
      automount_service_account_token:  {type: Bool, nilable: true, key: "automountServiceAccountToken", getter: false, setter: false},
      containers:                       {type: Array(Api::Core::V1::Container), nilable: false, key: "containers", getter: false, setter: false},
      dns_policy:                       {type: String, nilable: true, key: "dnsPolicy", getter: false, setter: false},
      host_aliases:                     {type: Array(Api::Core::V1::HostAlias), nilable: true, key: "hostAliases", getter: false, setter: false},
      host_ipc:                         {type: Bool, nilable: true, key: "hostIPC", getter: false, setter: false},
      host_network:                     {type: Bool, nilable: true, key: "hostNetwork", getter: false, setter: false},
      host_pid:                         {type: Bool, nilable: true, key: "hostPID", getter: false, setter: false},
      hostname:                         {type: String, nilable: true, key: "hostname", getter: false, setter: false},
      image_pull_secrets:               {type: Array(Api::Core::V1::LocalObjectReference), nilable: true, key: "imagePullSecrets", getter: false, setter: false},
      init_containers:                  {type: Array(Api::Core::V1::Container), nilable: true, key: "initContainers", getter: false, setter: false},
      node_name:                        {type: String, nilable: true, key: "nodeName", getter: false, setter: false},
      node_selector:                    {type: Hash(String, String), nilable: true, key: "nodeSelector", getter: false, setter: false},
      priority:                         {type: Int32, nilable: true, key: "priority", getter: false, setter: false},
      priority_class_name:              {type: String, nilable: true, key: "priorityClassName", getter: false, setter: false},
      restart_policy:                   {type: String, nilable: true, key: "restartPolicy", getter: false, setter: false},
      scheduler_name:                   {type: String, nilable: true, key: "schedulerName", getter: false, setter: false},
      security_context:                 {type: Api::Core::V1::PodSecurityContext, nilable: true, key: "securityContext", getter: false, setter: false},
      service_account:                  {type: String, nilable: true, key: "serviceAccount", getter: false, setter: false},
      service_account_name:             {type: String, nilable: true, key: "serviceAccountName", getter: false, setter: false},
      subdomain:                        {type: String, nilable: true, key: "subdomain", getter: false, setter: false},
      termination_grace_period_seconds: {type: Int32, nilable: true, key: "terminationGracePeriodSeconds", getter: false, setter: false},
      tolerations:                      {type: Array(Api::Core::V1::Toleration), nilable: true, key: "tolerations", getter: false, setter: false},
      volumes:                          {type: Array(Api::Core::V1::Volume), nilable: true, key: "volumes", getter: false, setter: false},
    }, true)

    def initialize(*, @active_deadline_seconds : Int32 | Nil = nil, @affinity : Api::Core::V1::Affinity | Nil = nil, @automount_service_account_token : Bool | Nil = nil, @containers : Array | Nil = nil, @dns_policy : String | Nil = nil, @host_aliases : Array | Nil = nil, @host_ipc : Bool | Nil = nil, @host_network : Bool | Nil = nil, @host_pid : Bool | Nil = nil, @hostname : String | Nil = nil, @image_pull_secrets : Array | Nil = nil, @init_containers : Array | Nil = nil, @node_name : String | Nil = nil, @node_selector : Hash(String, String) | Nil = nil, @priority : Int32 | Nil = nil, @priority_class_name : String | Nil = nil, @restart_policy : String | Nil = nil, @scheduler_name : String | Nil = nil, @security_context : Api::Core::V1::PodSecurityContext | Nil = nil, @service_account : String | Nil = nil, @service_account_name : String | Nil = nil, @subdomain : String | Nil = nil, @termination_grace_period_seconds : Int32 | Nil = nil, @tolerations : Array | Nil = nil, @volumes : Array | Nil = nil)
    end
  end
end
