# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
  class Kubernetes::Api::V1::SecurityContext
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The capabilities to [add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.](add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime.)
    @[JSON::Field(key: "capabilities")]
    @[YAML::Field(key: "capabilities")]
    property capabilities : Kubernetes::Api::V1::Capabilities | Nil

    # Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false.
    @[JSON::Field(key: "privileged")]
    @[YAML::Field(key: "privileged")]
    property privileged : Bool | Nil

    # Whether this container has a read-only root filesystem. Default is false.
    @[JSON::Field(key: "readOnlyRootFilesystem")]
    @[YAML::Field(key: "readOnlyRootFilesystem")]
    property read_only_root_filesystem : Bool | Nil

    # Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    @[JSON::Field(key: "runAsNonRoot")]
    @[YAML::Field(key: "runAsNonRoot")]
    property run_as_non_root : Bool | Nil

    # The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    @[JSON::Field(key: "runAsUser")]
    @[YAML::Field(key: "runAsUser")]
    property run_as_user : Int32 | Nil

    # The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    @[JSON::Field(key: "seLinuxOptions")]
    @[YAML::Field(key: "seLinuxOptions")]
    property se_linux_options : Kubernetes::Api::V1::SELinuxOptions | Nil

    def initialize(*, @capabilities : Kubernetes::Api::V1::Capabilities | Nil = nil, @privileged : Bool | Nil = nil, @read_only_root_filesystem : Bool | Nil = nil, @run_as_non_root : Bool | Nil = nil, @run_as_user : Int32 | Nil = nil, @se_linux_options : Kubernetes::Api::V1::SELinuxOptions | Nil = nil)
    end
  end
end
