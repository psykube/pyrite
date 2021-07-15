# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Pod Security Policy Spec defines the policy enforced.
  class Api::Policy::V1beta1::PodSecurityPolicySpec < Kubernetes::Spec
    # AllowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
    @[::JSON::Field(key: "allowPrivilegeEscalation")]
    @[::YAML::Field(key: "allowPrivilegeEscalation")]
    property allow_privilege_escalation : Bool | Nil

    # AllowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both AllowedCapabilities and RequiredDropCapabilities.
    @[::JSON::Field(key: "allowedCapabilities")]
    @[::YAML::Field(key: "allowedCapabilities")]
    property allowed_capabilities : Array(String) | Nil

    # AllowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "Volumes" field.
    @[::JSON::Field(key: "allowedFlexVolumes")]
    @[::YAML::Field(key: "allowedFlexVolumes")]
    property allowed_flex_volumes : Array(Api::Policy::V1beta1::AllowedFlexVolume) | Nil

    # is a white list of allowed host paths. Empty indicates that all host paths may be used.
    @[::JSON::Field(key: "allowedHostPaths")]
    @[::YAML::Field(key: "allowedHostPaths")]
    property allowed_host_paths : Array(Api::Policy::V1beta1::AllowedHostPath) | Nil

    # DefaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both DefaultAddCapabilities and RequiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the AllowedCapabilities list.
    @[::JSON::Field(key: "defaultAddCapabilities")]
    @[::YAML::Field(key: "defaultAddCapabilities")]
    property default_add_capabilities : Array(String) | Nil

    # DefaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
    @[::JSON::Field(key: "defaultAllowPrivilegeEscalation")]
    @[::YAML::Field(key: "defaultAllowPrivilegeEscalation")]
    property default_allow_privilege_escalation : Bool | Nil

    # FSGroup is the strategy that will dictate what fs group is used by the SecurityContext.
    @[::JSON::Field(key: "fsGroup")]
    @[::YAML::Field(key: "fsGroup")]
    property fs_group : Api::Policy::V1beta1::FSGroupStrategyOptions

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
    property host_ports : Array(Api::Policy::V1beta1::HostPortRange) | Nil

    # privileged determines if a pod can request to be run as privileged.
    @[::JSON::Field(key: "privileged")]
    @[::YAML::Field(key: "privileged")]
    property privileged : Bool | Nil

    # ReadOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
    @[::JSON::Field(key: "readOnlyRootFilesystem")]
    @[::YAML::Field(key: "readOnlyRootFilesystem")]
    property read_only_root_filesystem : Bool | Nil

    # RequiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
    @[::JSON::Field(key: "requiredDropCapabilities")]
    @[::YAML::Field(key: "requiredDropCapabilities")]
    property required_drop_capabilities : Array(String) | Nil

    # runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
    @[::JSON::Field(key: "runAsUser")]
    @[::YAML::Field(key: "runAsUser")]
    property run_as_user : Api::Policy::V1beta1::RunAsUserStrategyOptions

    # seLinux is the strategy that will dictate the allowable labels that may be set.
    @[::JSON::Field(key: "seLinux")]
    @[::YAML::Field(key: "seLinux")]
    property se_linux : Api::Policy::V1beta1::SELinuxStrategyOptions

    # SupplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
    @[::JSON::Field(key: "supplementalGroups")]
    @[::YAML::Field(key: "supplementalGroups")]
    property supplemental_groups : Api::Policy::V1beta1::SupplementalGroupsStrategyOptions

    # volumes is a white list of allowed volume plugins.  Empty indicates that all plugins may be used.
    @[::JSON::Field(key: "volumes")]
    @[::YAML::Field(key: "volumes")]
    property volumes : Array(String) | Nil

    def initialize(*, @allow_privilege_escalation : Bool | Nil = nil, @allowed_capabilities : Array | Nil = nil, @allowed_flex_volumes : Array | Nil = nil, @allowed_host_paths : Array | Nil = nil, @default_add_capabilities : Array | Nil = nil, @default_allow_privilege_escalation : Bool | Nil = nil, @fs_group : Api::Policy::V1beta1::FSGroupStrategyOptions, @host_ipc : Bool | Nil = nil, @host_network : Bool | Nil = nil, @host_pid : Bool | Nil = nil, @host_ports : Array | Nil = nil, @privileged : Bool | Nil = nil, @read_only_root_filesystem : Bool | Nil = nil, @required_drop_capabilities : Array | Nil = nil, @run_as_user : Api::Policy::V1beta1::RunAsUserStrategyOptions, @se_linux : Api::Policy::V1beta1::SELinuxStrategyOptions, @supplemental_groups : Api::Policy::V1beta1::SupplementalGroupsStrategyOptions, @volumes : Array | Nil = nil)
    end
  end
end
