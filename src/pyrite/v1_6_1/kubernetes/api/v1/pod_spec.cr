# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# PodSpec is a description of a pod.
class Pyrite::V1_6_1::Kubernetes::Api::V1::PodSpec
  # Optional duration in seconds the pod may be active on the node relative to StartTime before the system will actively try to mark it failed and kill associated containers. Value must be a positive integer.
  property active_deadline_seconds : Int32?

  # If specified, the pod's scheduling constraints
  property affinity : ::Pyrite::V1_6_1::Kubernetes::Api::V1::Affinity

  # AutomountServiceAccountToken indicates whether a service account token should be automatically mounted.
  property automount_service_account_token : Bool?

  # List of containers belonging to the pod. Containers cannot currently be added or removed. There must be at least one container in a Pod. Cannot be updated. More info: [http://kubernetes.io/docs/user-guide/containers](http://kubernetes.io/docs/user-guide/containers)
  property containers : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Container)

  # Set DNS policy for containers within the pod. One of 'ClusterFirstWithHostNet', 'ClusterFirst' or 'Default'. Defaults to "ClusterFirst". To have DNS options set along with hostNetwork, you have to specify DNS policy explicitly to 'ClusterFirstWithHostNet'.
  property dns_policy : String?

  # Use the host's ipc namespace. Optional: Default to false.
  property host_ipc : Bool?

  # Host networking requested for this pod. Use the host's network namespace. If this option is set, the ports that will be used must be specified. Default to false.
  property host_network : Bool?

  # Use the host's pid namespace. Optional: Default to false.
  property host_pid : Bool?

  # Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a system-defined value.
  property hostname : String?

  # ImagePullSecrets is an optional list of references to secrets in the same namespace to use for pulling any of the images used by this PodSpec. If specified, these secrets will be passed to individual puller implementations for them to use. For example, in the case of docker, only DockerConfig type secrets are honored. More info: [http://kubernetes.io/docs/user-guide/images#specifying-imagepullsecrets-on-a-pod](http://kubernetes.io/docs/user-guide/images#specifying-imagepullsecrets-on-a-pod)
  property image_pull_secrets : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::LocalObjectReference)?

  # List of initialization containers belonging to the pod. Init containers are executed in order prior to containers being started. If any init container fails, the pod is considered to have failed and is handled according to its restartPolicy. The name for an init container or normal container must be unique among all containers. Init containers may not have Lifecycle actions, Readiness probes, or Liveness probes. The resourceRequirements of an init container are taken into account during scheduling by finding the highest [request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/containers](request/limit for each resource type, and then using the max of of that value or the sum of the normal containers. Limits are applied to init containers in a similar fashion. Init containers cannot currently be added or removed. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/containers)
  property init_containers : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Container)?

  # NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the scheduler simply schedules this pod onto that node, assuming that it fits resource requirements.
  property node_name : String?

  # NodeSelector is a selector which must be true for the pod to fit on a node. Selector which must match a node's labels for the pod to be scheduled on that node. More info: [http://kubernetes.io/docs/user-guide/node-selection/README](http://kubernetes.io/docs/user-guide/node-selection/README)
  property node_selector : Hash(String, String)?

  # Restart policy for all containers within the pod. One of Always, OnFailure, Never. Default to Always. More info: [http://kubernetes.io/docs/user-guide/pod-states#restartpolicy](http://kubernetes.io/docs/user-guide/pod-states#restartpolicy)
  property restart_policy : String?

  # If specified, the pod will be dispatched by specified scheduler. If not specified, the pod will be dispatched by default scheduler.
  property scheduler_name : String?

  # SecurityContext holds pod-level security attributes and common container settings. Optional: Defaults to empty.  See type description for default values of each field.
  property security_context : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodSecurityContext

  # DeprecatedServiceAccount is a depreciated alias for ServiceAccountName. Deprecated: Use serviceAccountName instead.
  property service_account : String?

  # ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info: [http://releases.k8s.io/HEAD/docs/design/service_accounts.md](http://releases.k8s.io/HEAD/docs/design/service_accounts.md)
  property service_account_name : String?

  # If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at all.
  property subdomain : String?

  # Optional duration in seconds the pod needs to terminate gracefully. May be decreased in delete request. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period will be used instead. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. Defaults to 30 seconds.
  property termination_grace_period_seconds : Int32?

  # If specified, the pod's tolerations.
  property tolerations : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Toleration)?

  # List of volumes that can be mounted by containers belonging to the pod. More info: [http://kubernetes.io/docs/user-guide/volumes](http://kubernetes.io/docs/user-guide/volumes)
  property volumes : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Volume)?

  YAML.mapping({active_deadline_seconds:          {type: Int32, nilable: true, key: activeDeadlineSeconds, getter: false, setter: false},
                affinity:                         {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::Affinity, nilable: true, key: affinity, getter: false, setter: false},
                automount_service_account_token:  {type: Bool, nilable: true, key: automountServiceAccountToken, getter: false, setter: false},
                containers:                       {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Container), nilable: false, key: containers, getter: false, setter: false},
                dns_policy:                       {type: String, nilable: true, key: dnsPolicy, getter: false, setter: false},
                host_ipc:                         {type: Bool, nilable: true, key: hostIPC, getter: false, setter: false},
                host_network:                     {type: Bool, nilable: true, key: hostNetwork, getter: false, setter: false},
                host_pid:                         {type: Bool, nilable: true, key: hostPID, getter: false, setter: false},
                hostname:                         {type: String, nilable: true, key: hostname, getter: false, setter: false},
                image_pull_secrets:               {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::LocalObjectReference), nilable: true, key: imagePullSecrets, getter: false, setter: false},
                init_containers:                  {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Container), nilable: true, key: initContainers, getter: false, setter: false},
                node_name:                        {type: String, nilable: true, key: nodeName, getter: false, setter: false},
                node_selector:                    {type: Hash(String, String), nilable: true, key: nodeSelector, getter: false, setter: false},
                restart_policy:                   {type: String, nilable: true, key: restartPolicy, getter: false, setter: false},
                scheduler_name:                   {type: String, nilable: true, key: schedulerName, getter: false, setter: false},
                security_context:                 {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodSecurityContext, nilable: true, key: securityContext, getter: false, setter: false},
                service_account:                  {type: String, nilable: true, key: serviceAccount, getter: false, setter: false},
                service_account_name:             {type: String, nilable: true, key: serviceAccountName, getter: false, setter: false},
                subdomain:                        {type: String, nilable: true, key: subdomain, getter: false, setter: false},
                termination_grace_period_seconds: {type: Int32, nilable: true, key: terminationGracePeriodSeconds, getter: false, setter: false},
                tolerations:                      {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Toleration), nilable: true, key: tolerations, getter: false, setter: false},
                volumes:                          {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Volume), nilable: true, key: volumes, getter: false, setter: false}}, true)

  JSON.mapping({active_deadline_seconds:          {type: Int32, nilable: true, key: activeDeadlineSeconds, getter: false, setter: false},
                affinity:                         {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::Affinity, nilable: true, key: affinity, getter: false, setter: false},
                automount_service_account_token:  {type: Bool, nilable: true, key: automountServiceAccountToken, getter: false, setter: false},
                containers:                       {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Container), nilable: false, key: containers, getter: false, setter: false},
                dns_policy:                       {type: String, nilable: true, key: dnsPolicy, getter: false, setter: false},
                host_ipc:                         {type: Bool, nilable: true, key: hostIPC, getter: false, setter: false},
                host_network:                     {type: Bool, nilable: true, key: hostNetwork, getter: false, setter: false},
                host_pid:                         {type: Bool, nilable: true, key: hostPID, getter: false, setter: false},
                hostname:                         {type: String, nilable: true, key: hostname, getter: false, setter: false},
                image_pull_secrets:               {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::LocalObjectReference), nilable: true, key: imagePullSecrets, getter: false, setter: false},
                init_containers:                  {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Container), nilable: true, key: initContainers, getter: false, setter: false},
                node_name:                        {type: String, nilable: true, key: nodeName, getter: false, setter: false},
                node_selector:                    {type: Hash(String, String), nilable: true, key: nodeSelector, getter: false, setter: false},
                restart_policy:                   {type: String, nilable: true, key: restartPolicy, getter: false, setter: false},
                scheduler_name:                   {type: String, nilable: true, key: schedulerName, getter: false, setter: false},
                security_context:                 {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodSecurityContext, nilable: true, key: securityContext, getter: false, setter: false},
                service_account:                  {type: String, nilable: true, key: serviceAccount, getter: false, setter: false},
                service_account_name:             {type: String, nilable: true, key: serviceAccountName, getter: false, setter: false},
                subdomain:                        {type: String, nilable: true, key: subdomain, getter: false, setter: false},
                termination_grace_period_seconds: {type: Int32, nilable: true, key: terminationGracePeriodSeconds, getter: false, setter: false},
                tolerations:                      {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Toleration), nilable: true, key: tolerations, getter: false, setter: false},
                volumes:                          {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::Volume), nilable: true, key: volumes, getter: false, setter: false}}, true)

  def initialize(@active_deadline_seconds : Int32? = nil, @affinity : ::Pyrite::V1_6_1::Kubernetes::Api::V1::Affinity = nil, @automount_service_account_token : Bool? = nil, @containers : Array? = nil, @dns_policy : String? = nil, @host_ipc : Bool? = nil, @host_network : Bool? = nil, @host_pid : Bool? = nil, @hostname : String? = nil, @image_pull_secrets : Array? = nil, @init_containers : Array? = nil, @node_name : String? = nil, @node_selector : Hash(String, String)? = nil, @restart_policy : String? = nil, @scheduler_name : String? = nil, @security_context : ::Pyrite::V1_6_1::Kubernetes::Api::V1::PodSecurityContext = nil, @service_account : String? = nil, @service_account_name : String? = nil, @subdomain : String? = nil, @termination_grace_period_seconds : Int32? = nil, @tolerations : Array? = nil, @volumes : Array? = nil)
  end
end
