# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # PodSecurityContext holds pod-level security attributes and common container settings. Some fields are also present in container.securityContext.  Field values of container.securityContext take precedence over field values of PodSecurityContext.
  class Definitions::V1::PodSecurityContext
    # A special supplemental group that applies to all containers in a pod. Some volume types allow the Kubelet to change the ownership of that volume to be owned by the pod:
    #
    # 1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
    #
    # If unset, the Kubelet will not modify the ownership and permissions of any volume.
    property fs_group : Int32?

    # Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    property run_as_non_root : Bool?

    # The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    property run_as_user : Int32?

    # The SELinux context to be applied to all containers. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence for that container.
    property se_linux_options : V1::SELinuxOptions

    # A list of groups applied to the first process run in each container, in addition to the container's primary GID.  If unspecified, no groups will be added to any container.
    property supplemental_groups : Array(Int32)?

    YAML.mapping({fs_group:            {type: Int32, nilable: true, key: fsGroup, getter: false, setter: false},
                  run_as_non_root:     {type: Bool, nilable: true, key: runAsNonRoot, getter: false, setter: false},
                  run_as_user:         {type: Int32, nilable: true, key: runAsUser, getter: false, setter: false},
                  se_linux_options:    {type: V1::SELinuxOptions, nilable: true, key: seLinuxOptions, getter: false, setter: false},
                  supplemental_groups: {type: Array(Int32), nilable: true, key: supplementalGroups, getter: false, setter: false}}, true)

    JSON.mapping({fs_group:            {type: Int32, nilable: true, key: fsGroup, getter: false, setter: false},
                  run_as_non_root:     {type: Bool, nilable: true, key: runAsNonRoot, getter: false, setter: false},
                  run_as_user:         {type: Int32, nilable: true, key: runAsUser, getter: false, setter: false},
                  se_linux_options:    {type: V1::SELinuxOptions, nilable: true, key: seLinuxOptions, getter: false, setter: false},
                  supplemental_groups: {type: Array(Int32), nilable: true, key: supplementalGroups, getter: false, setter: false}}, true)

    def initialize(@fs_group : Int32? = nil, @run_as_non_root : Bool? = nil, @run_as_user : Int32? = nil, @se_linux_options : V1::SELinuxOptions = nil, @supplemental_groups : Array? = nil)
    end
  end
end
