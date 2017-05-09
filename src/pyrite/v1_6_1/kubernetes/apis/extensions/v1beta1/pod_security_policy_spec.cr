# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_1
  # Pod Security Policy Spec defines the policy enforced.
  class Definitions::Kubernetes::Apis::Extensions::V1beta1::PodSecurityPolicySpec
    # AllowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both AllowedCapabilities and RequiredDropCapabilities.
    property allowed_capabilities : Array(String)?

    # DefaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capabiility in both DefaultAddCapabilities and RequiredDropCapabilities.
    property default_add_capabilities : Array(String)?

    # FSGroup is the strategy that will dictate what fs group is used by the SecurityContext.
    property fs_group : Kubernetes::Apis::Extensions::V1beta1::FSGroupStrategyOptions

    # hostIPC determines if the policy allows the use of HostIPC in the pod spec.
    property host_ipc : Bool?

    # hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
    property host_network : Bool?

    # hostPID determines if the policy allows the use of HostPID in the pod spec.
    property host_pid : Bool?

    # hostPorts determines which host port ranges are allowed to be exposed.
    property host_ports : Array(Kubernetes::Apis::Extensions::V1beta1::HostPortRange)?

    # privileged determines if a pod can request to be run as privileged.
    property privileged : Bool?

    # ReadOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
    property read_only_root_filesystem : Bool?

    # RequiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
    property required_drop_capabilities : Array(String)?

    # runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
    property run_as_user : Kubernetes::Apis::Extensions::V1beta1::RunAsUserStrategyOptions

    # seLinux is the strategy that will dictate the allowable labels that may be set.
    property se_linux : Kubernetes::Apis::Extensions::V1beta1::SELinuxStrategyOptions

    # SupplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
    property supplemental_groups : Kubernetes::Apis::Extensions::V1beta1::SupplementalGroupsStrategyOptions

    # volumes is a white list of allowed volume plugins.  Empty indicates that all plugins may be used.
    property volumes : Array(String)?

    YAML.mapping({allowed_capabilities:       {type: Array(String), nilable: true, key: allowedCapabilities, getter: false, setter: false},
                  default_add_capabilities:   {type: Array(String), nilable: true, key: defaultAddCapabilities, getter: false, setter: false},
                  fs_group:                   {type: Kubernetes::Apis::Extensions::V1beta1::FSGroupStrategyOptions, nilable: false, key: fsGroup, getter: false, setter: false},
                  host_ipc:                   {type: Bool, nilable: true, key: hostIPC, getter: false, setter: false},
                  host_network:               {type: Bool, nilable: true, key: hostNetwork, getter: false, setter: false},
                  host_pid:                   {type: Bool, nilable: true, key: hostPID, getter: false, setter: false},
                  host_ports:                 {type: Array(Kubernetes::Apis::Extensions::V1beta1::HostPortRange), nilable: true, key: hostPorts, getter: false, setter: false},
                  privileged:                 {type: Bool, nilable: true, key: privileged, getter: false, setter: false},
                  read_only_root_filesystem:  {type: Bool, nilable: true, key: readOnlyRootFilesystem, getter: false, setter: false},
                  required_drop_capabilities: {type: Array(String), nilable: true, key: requiredDropCapabilities, getter: false, setter: false},
                  run_as_user:                {type: Kubernetes::Apis::Extensions::V1beta1::RunAsUserStrategyOptions, nilable: false, key: runAsUser, getter: false, setter: false},
                  se_linux:                   {type: Kubernetes::Apis::Extensions::V1beta1::SELinuxStrategyOptions, nilable: false, key: seLinux, getter: false, setter: false},
                  supplemental_groups:        {type: Kubernetes::Apis::Extensions::V1beta1::SupplementalGroupsStrategyOptions, nilable: false, key: supplementalGroups, getter: false, setter: false},
                  volumes:                    {type: Array(String), nilable: true, key: volumes, getter: false, setter: false}}, true)

    JSON.mapping({allowed_capabilities:       {type: Array(String), nilable: true, key: allowedCapabilities, getter: false, setter: false},
                  default_add_capabilities:   {type: Array(String), nilable: true, key: defaultAddCapabilities, getter: false, setter: false},
                  fs_group:                   {type: Kubernetes::Apis::Extensions::V1beta1::FSGroupStrategyOptions, nilable: false, key: fsGroup, getter: false, setter: false},
                  host_ipc:                   {type: Bool, nilable: true, key: hostIPC, getter: false, setter: false},
                  host_network:               {type: Bool, nilable: true, key: hostNetwork, getter: false, setter: false},
                  host_pid:                   {type: Bool, nilable: true, key: hostPID, getter: false, setter: false},
                  host_ports:                 {type: Array(Kubernetes::Apis::Extensions::V1beta1::HostPortRange), nilable: true, key: hostPorts, getter: false, setter: false},
                  privileged:                 {type: Bool, nilable: true, key: privileged, getter: false, setter: false},
                  read_only_root_filesystem:  {type: Bool, nilable: true, key: readOnlyRootFilesystem, getter: false, setter: false},
                  required_drop_capabilities: {type: Array(String), nilable: true, key: requiredDropCapabilities, getter: false, setter: false},
                  run_as_user:                {type: Kubernetes::Apis::Extensions::V1beta1::RunAsUserStrategyOptions, nilable: false, key: runAsUser, getter: false, setter: false},
                  se_linux:                   {type: Kubernetes::Apis::Extensions::V1beta1::SELinuxStrategyOptions, nilable: false, key: seLinux, getter: false, setter: false},
                  supplemental_groups:        {type: Kubernetes::Apis::Extensions::V1beta1::SupplementalGroupsStrategyOptions, nilable: false, key: supplementalGroups, getter: false, setter: false},
                  volumes:                    {type: Array(String), nilable: true, key: volumes, getter: false, setter: false}}, true)

    def initialize(@allowed_capabilities : Array? = nil, @default_add_capabilities : Array? = nil, @fs_group : Kubernetes::Apis::Extensions::V1beta1::FSGroupStrategyOptions = nil, @host_ipc : Bool? = nil, @host_network : Bool? = nil, @host_pid : Bool? = nil, @host_ports : Array? = nil, @privileged : Bool? = nil, @read_only_root_filesystem : Bool? = nil, @required_drop_capabilities : Array? = nil, @run_as_user : Kubernetes::Apis::Extensions::V1beta1::RunAsUserStrategyOptions = nil, @se_linux : Kubernetes::Apis::Extensions::V1beta1::SELinuxStrategyOptions = nil, @supplemental_groups : Kubernetes::Apis::Extensions::V1beta1::SupplementalGroupsStrategyOptions = nil, @volumes : Array? = nil)
    end
  end
end
