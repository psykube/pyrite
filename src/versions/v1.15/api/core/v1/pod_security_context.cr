# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
  class Api::Core::V1::PodSecurityContext < Kubernetes::Spec
    # A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
    #
    # 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
    #
    # If unset, the Kubelet will not modify the ownership and permissions of any volume.
    @[::JSON::Field(key: "fsGroup")]
    @[::YAML::Field(key: "fsGroup")]
    property fs_group : Int32 | Nil

    # The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    @[::JSON::Field(key: "runAsGroup")]
    @[::YAML::Field(key: "runAsGroup")]
    property run_as_group : Int32 | Nil

    # Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    @[::JSON::Field(key: "runAsNonRoot")]
    @[::YAML::Field(key: "runAsNonRoot")]
    property run_as_non_root : Bool | Nil

    # The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    @[::JSON::Field(key: "runAsUser")]
    @[::YAML::Field(key: "runAsUser")]
    property run_as_user : Int32 | Nil

    # The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    @[::JSON::Field(key: "seLinuxOptions")]
    @[::YAML::Field(key: "seLinuxOptions")]
    property se_linux_options : Api::Core::V1::SELinuxOptions | Nil

    # A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container.
    @[::JSON::Field(key: "supplementalGroups")]
    @[::YAML::Field(key: "supplementalGroups")]
    property supplemental_groups : Array(Int32) | Nil

    # Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls (by the container runtime) might fail to launch.
    @[::JSON::Field(key: "sysctls")]
    @[::YAML::Field(key: "sysctls")]
    property sysctls : Array(Api::Core::V1::Sysctl) | Nil

    # Windows security options.
    @[::JSON::Field(key: "windowsOptions")]
    @[::YAML::Field(key: "windowsOptions")]
    property windows_options : Api::Core::V1::WindowsSecurityContextOptions | Nil

    def initialize(*, @fs_group : Int32 | Nil = nil, @run_as_group : Int32 | Nil = nil, @run_as_non_root : Bool | Nil = nil, @run_as_user : Int32 | Nil = nil, @se_linux_options : Api::Core::V1::SELinuxOptions | Nil = nil, @supplemental_groups : Array | Nil = nil, @sysctls : Array | Nil = nil, @windows_options : Api::Core::V1::WindowsSecurityContextOptions | Nil = nil)
    end
  end
end
