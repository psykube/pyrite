# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodSecurityPolicySpec defines the policy enforced.
  class Api::Policy::V1beta1::PodSecurityPolicySpec
    # allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
    property allow_privilege_escalation : Bool | Nil

    # allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
    property allowed_capabilities : Array(String) | Nil

    # allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
    property allowed_flex_volumes : Array(Api::Policy::V1beta1::AllowedFlexVolume) | Nil

    # allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.
    property allowed_host_paths : Array(Api::Policy::V1beta1::AllowedHostPath) | Nil

    # AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.
    property allowed_proc_mount_types : Array(String) | Nil

    # allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.
    #
    # Examples: e.g. "foo/*" allows ["foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.)
    property allowed_unsafe_sysctls : Array(String) | Nil

    # defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.
    property default_add_capabilities : Array(String) | Nil

    # defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
    property default_allow_privilege_escalation : Bool | Nil

    # forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.
    #
    # Examples: e.g. "foo/*" forbids ["foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.]("foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.)
    property forbidden_sysctls : Array(String) | Nil

    # fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.
    property fs_group : Api::Policy::V1beta1::FSGroupStrategyOptions

    # hostIPC determines if the policy allows the use of HostIPC in the pod spec.
    property host_ipc : Bool | Nil

    # hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
    property host_network : Bool | Nil

    # hostPID determines if the policy allows the use of HostPID in the pod spec.
    property host_pid : Bool | Nil

    # hostPorts determines which host port ranges are allowed to be exposed.
    property host_ports : Array(Api::Policy::V1beta1::HostPortRange) | Nil

    # privileged determines if a pod can request to be run as privileged.
    property privileged : Bool | Nil

    # readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
    property read_only_root_filesystem : Bool | Nil

    # requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
    property required_drop_capabilities : Array(String) | Nil

    # runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
    property run_as_user : Api::Policy::V1beta1::RunAsUserStrategyOptions

    # seLinux is the strategy that will dictate the allowable labels that may be set.
    property se_linux : Api::Policy::V1beta1::SELinuxStrategyOptions

    # supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
    property supplemental_groups : Api::Policy::V1beta1::SupplementalGroupsStrategyOptions

    # volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
    property volumes : Array(String) | Nil

    ::YAML.mapping({
      allow_privilege_escalation:         {type: Bool, nilable: true, key: "allowPrivilegeEscalation", getter: false, setter: false},
      allowed_capabilities:               {type: Array(String), nilable: true, key: "allowedCapabilities", getter: false, setter: false},
      allowed_flex_volumes:               {type: Array(Api::Policy::V1beta1::AllowedFlexVolume), nilable: true, key: "allowedFlexVolumes", getter: false, setter: false},
      allowed_host_paths:                 {type: Array(Api::Policy::V1beta1::AllowedHostPath), nilable: true, key: "allowedHostPaths", getter: false, setter: false},
      allowed_proc_mount_types:           {type: Array(String), nilable: true, key: "allowedProcMountTypes", getter: false, setter: false},
      allowed_unsafe_sysctls:             {type: Array(String), nilable: true, key: "allowedUnsafeSysctls", getter: false, setter: false},
      default_add_capabilities:           {type: Array(String), nilable: true, key: "defaultAddCapabilities", getter: false, setter: false},
      default_allow_privilege_escalation: {type: Bool, nilable: true, key: "defaultAllowPrivilegeEscalation", getter: false, setter: false},
      forbidden_sysctls:                  {type: Array(String), nilable: true, key: "forbiddenSysctls", getter: false, setter: false},
      fs_group:                           {type: Api::Policy::V1beta1::FSGroupStrategyOptions, nilable: false, key: "fsGroup", getter: false, setter: false},
      host_ipc:                           {type: Bool, nilable: true, key: "hostIPC", getter: false, setter: false},
      host_network:                       {type: Bool, nilable: true, key: "hostNetwork", getter: false, setter: false},
      host_pid:                           {type: Bool, nilable: true, key: "hostPID", getter: false, setter: false},
      host_ports:                         {type: Array(Api::Policy::V1beta1::HostPortRange), nilable: true, key: "hostPorts", getter: false, setter: false},
      privileged:                         {type: Bool, nilable: true, key: "privileged", getter: false, setter: false},
      read_only_root_filesystem:          {type: Bool, nilable: true, key: "readOnlyRootFilesystem", getter: false, setter: false},
      required_drop_capabilities:         {type: Array(String), nilable: true, key: "requiredDropCapabilities", getter: false, setter: false},
      run_as_user:                        {type: Api::Policy::V1beta1::RunAsUserStrategyOptions, nilable: false, key: "runAsUser", getter: false, setter: false},
      se_linux:                           {type: Api::Policy::V1beta1::SELinuxStrategyOptions, nilable: false, key: "seLinux", getter: false, setter: false},
      supplemental_groups:                {type: Api::Policy::V1beta1::SupplementalGroupsStrategyOptions, nilable: false, key: "supplementalGroups", getter: false, setter: false},
      volumes:                            {type: Array(String), nilable: true, key: "volumes", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      allow_privilege_escalation:         {type: Bool, nilable: true, key: "allowPrivilegeEscalation", getter: false, setter: false},
      allowed_capabilities:               {type: Array(String), nilable: true, key: "allowedCapabilities", getter: false, setter: false},
      allowed_flex_volumes:               {type: Array(Api::Policy::V1beta1::AllowedFlexVolume), nilable: true, key: "allowedFlexVolumes", getter: false, setter: false},
      allowed_host_paths:                 {type: Array(Api::Policy::V1beta1::AllowedHostPath), nilable: true, key: "allowedHostPaths", getter: false, setter: false},
      allowed_proc_mount_types:           {type: Array(String), nilable: true, key: "allowedProcMountTypes", getter: false, setter: false},
      allowed_unsafe_sysctls:             {type: Array(String), nilable: true, key: "allowedUnsafeSysctls", getter: false, setter: false},
      default_add_capabilities:           {type: Array(String), nilable: true, key: "defaultAddCapabilities", getter: false, setter: false},
      default_allow_privilege_escalation: {type: Bool, nilable: true, key: "defaultAllowPrivilegeEscalation", getter: false, setter: false},
      forbidden_sysctls:                  {type: Array(String), nilable: true, key: "forbiddenSysctls", getter: false, setter: false},
      fs_group:                           {type: Api::Policy::V1beta1::FSGroupStrategyOptions, nilable: false, key: "fsGroup", getter: false, setter: false},
      host_ipc:                           {type: Bool, nilable: true, key: "hostIPC", getter: false, setter: false},
      host_network:                       {type: Bool, nilable: true, key: "hostNetwork", getter: false, setter: false},
      host_pid:                           {type: Bool, nilable: true, key: "hostPID", getter: false, setter: false},
      host_ports:                         {type: Array(Api::Policy::V1beta1::HostPortRange), nilable: true, key: "hostPorts", getter: false, setter: false},
      privileged:                         {type: Bool, nilable: true, key: "privileged", getter: false, setter: false},
      read_only_root_filesystem:          {type: Bool, nilable: true, key: "readOnlyRootFilesystem", getter: false, setter: false},
      required_drop_capabilities:         {type: Array(String), nilable: true, key: "requiredDropCapabilities", getter: false, setter: false},
      run_as_user:                        {type: Api::Policy::V1beta1::RunAsUserStrategyOptions, nilable: false, key: "runAsUser", getter: false, setter: false},
      se_linux:                           {type: Api::Policy::V1beta1::SELinuxStrategyOptions, nilable: false, key: "seLinux", getter: false, setter: false},
      supplemental_groups:                {type: Api::Policy::V1beta1::SupplementalGroupsStrategyOptions, nilable: false, key: "supplementalGroups", getter: false, setter: false},
      volumes:                            {type: Array(String), nilable: true, key: "volumes", getter: false, setter: false},
    }, true)

    def initialize(*, @fs_group : Api::Policy::V1beta1::FSGroupStrategyOptions, @run_as_user : Api::Policy::V1beta1::RunAsUserStrategyOptions, @se_linux : Api::Policy::V1beta1::SELinuxStrategyOptions, @supplemental_groups : Api::Policy::V1beta1::SupplementalGroupsStrategyOptions, @allow_privilege_escalation : Bool | Nil = nil, @allowed_capabilities : Array | Nil = nil, @allowed_flex_volumes : Array | Nil = nil, @allowed_host_paths : Array | Nil = nil, @allowed_proc_mount_types : Array | Nil = nil, @allowed_unsafe_sysctls : Array | Nil = nil, @default_add_capabilities : Array | Nil = nil, @default_allow_privilege_escalation : Bool | Nil = nil, @forbidden_sysctls : Array | Nil = nil, @host_ipc : Bool | Nil = nil, @host_network : Bool | Nil = nil, @host_pid : Bool | Nil = nil, @host_ports : Array | Nil = nil, @privileged : Bool | Nil = nil, @read_only_root_filesystem : Bool | Nil = nil, @required_drop_capabilities : Array | Nil = nil, @volumes : Array | Nil = nil)
    end
  end
end
