# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodSecurityPolicySpec defines the policy enforced. Deprecated: use PodSecurityPolicySpec from policy API Group instead.
  class Api::Extensions::V1beta1::PodSecurityPolicySpec < Kubernetes::Spec
    # allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
    @[::JSON::Field(key: "allowPrivilegeEscalation")]
    @[::YAML::Field(key: "allowPrivilegeEscalation")]
    property allow_privilege_escalation : Bool | Nil

    # allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
    @[::JSON::Field(key: "allowedCapabilities")]
    @[::YAML::Field(key: "allowedCapabilities")]
    property allowed_capabilities : Array(String) | Nil

    # allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
    @[::JSON::Field(key: "allowedFlexVolumes")]
    @[::YAML::Field(key: "allowedFlexVolumes")]
    property allowed_flex_volumes : Array(Api::Extensions::V1beta1::AllowedFlexVolume) | Nil

    # allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.
    @[::JSON::Field(key: "allowedHostPaths")]
    @[::YAML::Field(key: "allowedHostPaths")]
    property allowed_host_paths : Array(Api::Extensions::V1beta1::AllowedHostPath) | Nil

    # AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.
    @[::JSON::Field(key: "allowedProcMountTypes")]
    @[::YAML::Field(key: "allowedProcMountTypes")]
    property allowed_proc_mount_types : Array(String) | Nil

    # allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.
    #
    # Examples: e.g. "foo/*" allows ["foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.)
    @[::JSON::Field(key: "allowedUnsafeSysctls")]
    @[::YAML::Field(key: "allowedUnsafeSysctls")]
    property allowed_unsafe_sysctls : Array(String) | Nil

    # defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.
    @[::JSON::Field(key: "defaultAddCapabilities")]
    @[::YAML::Field(key: "defaultAddCapabilities")]
    property default_add_capabilities : Array(String) | Nil

    # defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
    @[::JSON::Field(key: "defaultAllowPrivilegeEscalation")]
    @[::YAML::Field(key: "defaultAllowPrivilegeEscalation")]
    property default_allow_privilege_escalation : Bool | Nil

    # forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.
    #
    # Examples: e.g. "foo/*" forbids ["foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.)
    @[::JSON::Field(key: "forbiddenSysctls")]
    @[::YAML::Field(key: "forbiddenSysctls")]
    property forbidden_sysctls : Array(String) | Nil

    # fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.
    @[::JSON::Field(key: "fsGroup")]
    @[::YAML::Field(key: "fsGroup")]
    property fs_group : Api::Extensions::V1beta1::FSGroupStrategyOptions

    # hostIPC determines if the policy allows the use of HostIPC in the pod spec.
    @[::JSON::Field(key: "hostIPC")]
    @[::YAML::Field(key: "hostIPC")]
    property host_ipc : Bool | Nil

    # hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
    @[::JSON::Field(key: "hostNetwork")]
    @[::YAML::Field(key: "hostNetwork")]
    property host_network : Bool | Nil

    # hostPID determines if the policy allows the use of HostPID in the pod spec.
    @[::JSON::Field(key: "hostPID")]
    @[::YAML::Field(key: "hostPID")]
    property host_pid : Bool | Nil

    # hostPorts determines which host port ranges are allowed to be exposed.
    @[::JSON::Field(key: "hostPorts")]
    @[::YAML::Field(key: "hostPorts")]
    property host_ports : Array(Api::Extensions::V1beta1::HostPortRange) | Nil

    # privileged determines if a pod can request to be run as privileged.
    @[::JSON::Field(key: "privileged")]
    @[::YAML::Field(key: "privileged")]
    property privileged : Bool | Nil

    # readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
    @[::JSON::Field(key: "readOnlyRootFilesystem")]
    @[::YAML::Field(key: "readOnlyRootFilesystem")]
    property read_only_root_filesystem : Bool | Nil

    # requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
    @[::JSON::Field(key: "requiredDropCapabilities")]
    @[::YAML::Field(key: "requiredDropCapabilities")]
    property required_drop_capabilities : Array(String) | Nil

    # runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
    @[::JSON::Field(key: "runAsUser")]
    @[::YAML::Field(key: "runAsUser")]
    property run_as_user : Api::Extensions::V1beta1::RunAsUserStrategyOptions

    # seLinux is the strategy that will dictate the allowable labels that may be set.
    @[::JSON::Field(key: "seLinux")]
    @[::YAML::Field(key: "seLinux")]
    property se_linux : Api::Extensions::V1beta1::SELinuxStrategyOptions

    # supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
    @[::JSON::Field(key: "supplementalGroups")]
    @[::YAML::Field(key: "supplementalGroups")]
    property supplemental_groups : Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions

    # volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
    @[::JSON::Field(key: "volumes")]
    @[::YAML::Field(key: "volumes")]
    property volumes : Array(String) | Nil

    def initialize(*, @allow_privilege_escalation : Bool | Nil = nil, @allowed_capabilities : Array | Nil = nil, @allowed_flex_volumes : Array | Nil = nil, @allowed_host_paths : Array | Nil = nil, @allowed_proc_mount_types : Array | Nil = nil, @allowed_unsafe_sysctls : Array | Nil = nil, @default_add_capabilities : Array | Nil = nil, @default_allow_privilege_escalation : Bool | Nil = nil, @forbidden_sysctls : Array | Nil = nil, @fs_group : Api::Extensions::V1beta1::FSGroupStrategyOptions, @host_ipc : Bool | Nil = nil, @host_network : Bool | Nil = nil, @host_pid : Bool | Nil = nil, @host_ports : Array | Nil = nil, @privileged : Bool | Nil = nil, @read_only_root_filesystem : Bool | Nil = nil, @required_drop_capabilities : Array | Nil = nil, @run_as_user : Api::Extensions::V1beta1::RunAsUserStrategyOptions, @se_linux : Api::Extensions::V1beta1::SELinuxStrategyOptions, @supplemental_groups : Api::Extensions::V1beta1::SupplementalGroupsStrategyOptions, @volumes : Array | Nil = nil)
    end
  end
end
