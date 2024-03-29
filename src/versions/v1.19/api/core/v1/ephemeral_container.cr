# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # An EphemeralContainer is a container that may be added temporarily to an existing pod for user-initiated activities such as debugging. Ephemeral containers have no resource or scheduling guarantees, and they will not be restarted when they exit or when a pod is removed or restarted. If an ephemeral container causes a pod to exceed its resource allocation, the pod may be evicted. Ephemeral containers may not be added by directly updating the pod spec. They must be added via the pod's ephemeralcontainers subresource, and they will appear in the pod spec once added. This is an alpha feature enabled by the EphemeralContainers feature flag.
  class Api::Core::V1::EphemeralContainer < Kubernetes::Spec
    # Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)
    @[::JSON::Field(key: "args")]
    @[::YAML::Field(key: "args")]
    property args : Array(String) | Nil

    # Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)
    @[::JSON::Field(key: "command")]
    @[::YAML::Field(key: "command")]
    property command : Array(String) | Nil

    # List of environment variables to set in the container. Cannot be updated.
    @[::JSON::Field(key: "env")]
    @[::YAML::Field(key: "env")]
    property env : Array(Api::Core::V1::EnvVar) | Nil

    # List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
    @[::JSON::Field(key: "envFrom")]
    @[::YAML::Field(key: "envFrom")]
    property env_from : Array(Api::Core::V1::EnvFromSource) | Nil

    # Docker image name. More info: [https://kubernetes.io/docs/concepts/containers/images](https://kubernetes.io/docs/concepts/containers/images)
    @[::JSON::Field(key: "image")]
    @[::YAML::Field(key: "image")]
    property image : String | Nil

    # Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images)
    @[::JSON::Field(key: "imagePullPolicy")]
    @[::YAML::Field(key: "imagePullPolicy")]
    property image_pull_policy : String | Nil

    # Lifecycle is not allowed for ephemeral containers.
    @[::JSON::Field(key: "lifecycle")]
    @[::YAML::Field(key: "lifecycle")]
    property lifecycle : Api::Core::V1::Lifecycle | Nil

    # Probes are not allowed for ephemeral containers.
    @[::JSON::Field(key: "livenessProbe")]
    @[::YAML::Field(key: "livenessProbe")]
    property liveness_probe : Api::Core::V1::Probe | Nil

    # Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among all containers, init containers and ephemeral containers.
    @[::JSON::Field(key: "name")]
    @[::YAML::Field(key: "name")]
    property name : String

    # Ports are not allowed for ephemeral containers.
    @[::JSON::Field(key: "ports")]
    @[::YAML::Field(key: "ports")]
    property ports : Array(Api::Core::V1::ContainerPort) | Nil

    # Probes are not allowed for ephemeral containers.
    @[::JSON::Field(key: "readinessProbe")]
    @[::YAML::Field(key: "readinessProbe")]
    property readiness_probe : Api::Core::V1::Probe | Nil

    # Resources are not allowed for ephemeral containers. Ephemeral containers use spare resources already allocated to the pod.
    @[::JSON::Field(key: "resources")]
    @[::YAML::Field(key: "resources")]
    property resources : Api::Core::V1::ResourceRequirements | Nil

    # SecurityContext is not allowed for ephemeral containers.
    @[::JSON::Field(key: "securityContext")]
    @[::YAML::Field(key: "securityContext")]
    property security_context : Api::Core::V1::SecurityContext | Nil

    # Probes are not allowed for ephemeral containers.
    @[::JSON::Field(key: "startupProbe")]
    @[::YAML::Field(key: "startupProbe")]
    property startup_probe : Api::Core::V1::Probe | Nil

    # Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
    @[::JSON::Field(key: "stdin")]
    @[::YAML::Field(key: "stdin")]
    property stdin : Bool | Nil

    # Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
    @[::JSON::Field(key: "stdinOnce")]
    @[::YAML::Field(key: "stdinOnce")]
    property stdin_once : Bool | Nil

    # If set, the name of the container from PodSpec that this ephemeral container targets. The ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If not set then the ephemeral container is run in whatever namespaces are shared for the pod. Note that the container runtime must support this feature.
    @[::JSON::Field(key: "targetContainerName")]
    @[::YAML::Field(key: "targetContainerName")]
    property target_container_name : String | Nil

    # Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to [/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.)
    @[::JSON::Field(key: "terminationMessagePath")]
    @[::YAML::Field(key: "terminationMessagePath")]
    property termination_message_path : String | Nil

    # Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
    @[::JSON::Field(key: "terminationMessagePolicy")]
    @[::YAML::Field(key: "terminationMessagePolicy")]
    property termination_message_policy : String | Nil

    # Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
    @[::JSON::Field(key: "tty")]
    @[::YAML::Field(key: "tty")]
    property tty : Bool | Nil

    # volumeDevices is the list of block devices to be used by the container.
    @[::JSON::Field(key: "volumeDevices")]
    @[::YAML::Field(key: "volumeDevices")]
    property volume_devices : Array(Api::Core::V1::VolumeDevice) | Nil

    # Pod volumes to mount into the container's filesystem. Cannot be updated.
    @[::JSON::Field(key: "volumeMounts")]
    @[::YAML::Field(key: "volumeMounts")]
    property volume_mounts : Array(Api::Core::V1::VolumeMount) | Nil

    # Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
    @[::JSON::Field(key: "workingDir")]
    @[::YAML::Field(key: "workingDir")]
    property working_dir : String | Nil

    def initialize(*, @args : Array | Nil = nil, @command : Array | Nil = nil, @env : Array | Nil = nil, @env_from : Array | Nil = nil, @image : String | Nil = nil, @image_pull_policy : String | Nil = nil, @lifecycle : Api::Core::V1::Lifecycle | Nil = nil, @liveness_probe : Api::Core::V1::Probe | Nil = nil, @name : String, @ports : Array | Nil = nil, @readiness_probe : Api::Core::V1::Probe | Nil = nil, @resources : Api::Core::V1::ResourceRequirements | Nil = nil, @security_context : Api::Core::V1::SecurityContext | Nil = nil, @startup_probe : Api::Core::V1::Probe | Nil = nil, @stdin : Bool | Nil = nil, @stdin_once : Bool | Nil = nil, @target_container_name : String | Nil = nil, @termination_message_path : String | Nil = nil, @termination_message_policy : String | Nil = nil, @tty : Bool | Nil = nil, @volume_devices : Array | Nil = nil, @volume_mounts : Array | Nil = nil, @working_dir : String | Nil = nil)
    end
  end
end
