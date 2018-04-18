# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # A single application container that you want to run within a pod.
  class Api::Core::V1::Container
    # Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)
    property args : Array(String) | Nil

    # Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. Cannot be updated. More info: [https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell](https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell)
    property command : Array(String) | Nil

    # List of environment variables to set in the container. Cannot be updated.
    property env : Array(Api::Core::V1::EnvVar) | Nil

    # List of sources to populate environment variables in the container. The keys defined within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event when the container is starting. When a key exists in multiple sources, the value associated with the last source will take precedence. Values defined by an Env with a duplicate key will take precedence. Cannot be updated.
    property env_from : Array(Api::Core::V1::EnvFromSource) | Nil

    # Docker image name. More info: [https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.](https://kubernetes.io/docs/concepts/containers/images This field is optional to allow higher level config management to default or override container images in workload controllers like Deployments and StatefulSets.)
    property image : String | Nil

    # Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag is specified, or IfNotPresent otherwise. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/containers/images#updating-images](https://kubernetes.io/docs/concepts/containers/images#updating-images)
    property image_pull_policy : String | Nil

    # Actions that the management system should take in response to container lifecycle events. Cannot be updated.
    property lifecycle : Api::Core::V1::Lifecycle | Nil

    # Periodic probe of container liveness. Container will be restarted if the probe fails. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    property liveness_probe : Api::Core::V1::Probe | Nil

    # Name of the container specified as a DNS_LABEL. Each container in a pod must have a unique name (DNS_LABEL). Cannot be updated.
    property name : String

    # List of ports to expose from the container. Exposing a port here gives the system additional information about the network connections a container uses, but is primarily informational. Not specifying a port here DOES NOT prevent that port from being exposed. Any port which is listening on the default "0.0.0.0" address inside a container will be accessible from the network. Cannot be updated.
    property ports : Array(Api::Core::V1::ContainerPort) | Nil

    # Periodic probe of container service readiness. Container will be removed from service endpoints if the probe fails. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    property readiness_probe : Api::Core::V1::Probe | Nil

    # Compute Resources required by this container. Cannot be updated. More info: [https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources](https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources)
    property resources : Api::Core::V1::ResourceRequirements | Nil

    # Security options the pod should run with. More info: [https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://git.k8s.io/community/contributors/design-proposals/security_context.md](https://kubernetes.io/docs/concepts/policy/security-context/ More info: https://git.k8s.io/community/contributors/design-proposals/security_context.md)
    property security_context : Api::Core::V1::SecurityContext | Nil

    # Whether this container should allocate a buffer for stdin in the container runtime. If this is not set, reads from stdin in the container will always result in EOF. Default is false.
    property stdin : Bool | Nil

    # Whether the container runtime should close the stdin channel after it has been opened by a single attach. When stdin is true the stdin stream will remain open across multiple attach sessions. If stdinOnce is set to true, stdin is opened on container start, is empty until the first client attaches to stdin, and then remains open and accepts data until the client disconnects, at which time stdin is closed and remains closed until the container is restarted. If this flag is false, a container processes that reads from stdin will never receive an EOF. Default is false
    property stdin_once : Bool | Nil

    # Optional: Path at which the file to which the container's termination message will be written is mounted into the container's filesystem. Message written is intended to be brief final status, such as an assertion failure message. Will be truncated by the node if greater than 4096 bytes. The total message length across all containers will be limited to 12kb. Defaults to [/dev/termination-log. Cannot be updated.](/dev/termination-log. Cannot be updated.)
    property termination_message_path : String | Nil

    # Indicate how the termination message should be populated. File will use the contents of terminationMessagePath to populate the container status message on both success and failure. FallbackToLogsOnError will use the last chunk of container log output if the termination message file is empty and the container exited with an error. The log output is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be updated.
    property termination_message_policy : String | Nil

    # Whether this container should allocate a TTY for itself, also requires 'stdin' to be true. Default is false.
    property tty : Bool | Nil

    # Pod volumes to mount into the container's filesystem. Cannot be updated.
    property volume_mounts : Array(Api::Core::V1::VolumeMount) | Nil

    # Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image. Cannot be updated.
    property working_dir : String | Nil

    ::YAML.mapping({
      args:                       {type: Array(String), nilable: true, key: "args", getter: false, setter: false},
      command:                    {type: Array(String), nilable: true, key: "command", getter: false, setter: false},
      env:                        {type: Array(Api::Core::V1::EnvVar), nilable: true, key: "env", getter: false, setter: false},
      env_from:                   {type: Array(Api::Core::V1::EnvFromSource), nilable: true, key: "envFrom", getter: false, setter: false},
      image:                      {type: String, nilable: true, key: "image", getter: false, setter: false},
      image_pull_policy:          {type: String, nilable: true, key: "imagePullPolicy", getter: false, setter: false},
      lifecycle:                  {type: Api::Core::V1::Lifecycle, nilable: true, key: "lifecycle", getter: false, setter: false},
      liveness_probe:             {type: Api::Core::V1::Probe, nilable: true, key: "livenessProbe", getter: false, setter: false},
      name:                       {type: String, nilable: false, key: "name", getter: false, setter: false},
      ports:                      {type: Array(Api::Core::V1::ContainerPort), nilable: true, key: "ports", getter: false, setter: false},
      readiness_probe:            {type: Api::Core::V1::Probe, nilable: true, key: "readinessProbe", getter: false, setter: false},
      resources:                  {type: Api::Core::V1::ResourceRequirements, nilable: true, key: "resources", getter: false, setter: false},
      security_context:           {type: Api::Core::V1::SecurityContext, nilable: true, key: "securityContext", getter: false, setter: false},
      stdin:                      {type: Bool, nilable: true, key: "stdin", getter: false, setter: false},
      stdin_once:                 {type: Bool, nilable: true, key: "stdinOnce", getter: false, setter: false},
      termination_message_path:   {type: String, nilable: true, key: "terminationMessagePath", getter: false, setter: false},
      termination_message_policy: {type: String, nilable: true, key: "terminationMessagePolicy", getter: false, setter: false},
      tty:                        {type: Bool, nilable: true, key: "tty", getter: false, setter: false},
      volume_mounts:              {type: Array(Api::Core::V1::VolumeMount), nilable: true, key: "volumeMounts", getter: false, setter: false},
      working_dir:                {type: String, nilable: true, key: "workingDir", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      args:                       {type: Array(String), nilable: true, key: "args", getter: false, setter: false},
      command:                    {type: Array(String), nilable: true, key: "command", getter: false, setter: false},
      env:                        {type: Array(Api::Core::V1::EnvVar), nilable: true, key: "env", getter: false, setter: false},
      env_from:                   {type: Array(Api::Core::V1::EnvFromSource), nilable: true, key: "envFrom", getter: false, setter: false},
      image:                      {type: String, nilable: true, key: "image", getter: false, setter: false},
      image_pull_policy:          {type: String, nilable: true, key: "imagePullPolicy", getter: false, setter: false},
      lifecycle:                  {type: Api::Core::V1::Lifecycle, nilable: true, key: "lifecycle", getter: false, setter: false},
      liveness_probe:             {type: Api::Core::V1::Probe, nilable: true, key: "livenessProbe", getter: false, setter: false},
      name:                       {type: String, nilable: false, key: "name", getter: false, setter: false},
      ports:                      {type: Array(Api::Core::V1::ContainerPort), nilable: true, key: "ports", getter: false, setter: false},
      readiness_probe:            {type: Api::Core::V1::Probe, nilable: true, key: "readinessProbe", getter: false, setter: false},
      resources:                  {type: Api::Core::V1::ResourceRequirements, nilable: true, key: "resources", getter: false, setter: false},
      security_context:           {type: Api::Core::V1::SecurityContext, nilable: true, key: "securityContext", getter: false, setter: false},
      stdin:                      {type: Bool, nilable: true, key: "stdin", getter: false, setter: false},
      stdin_once:                 {type: Bool, nilable: true, key: "stdinOnce", getter: false, setter: false},
      termination_message_path:   {type: String, nilable: true, key: "terminationMessagePath", getter: false, setter: false},
      termination_message_policy: {type: String, nilable: true, key: "terminationMessagePolicy", getter: false, setter: false},
      tty:                        {type: Bool, nilable: true, key: "tty", getter: false, setter: false},
      volume_mounts:              {type: Array(Api::Core::V1::VolumeMount), nilable: true, key: "volumeMounts", getter: false, setter: false},
      working_dir:                {type: String, nilable: true, key: "workingDir", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @args : Array | Nil = nil, @command : Array | Nil = nil, @env : Array | Nil = nil, @env_from : Array | Nil = nil, @image : String | Nil = nil, @image_pull_policy : String | Nil = nil, @lifecycle : Api::Core::V1::Lifecycle | Nil = nil, @liveness_probe : Api::Core::V1::Probe | Nil = nil, @ports : Array | Nil = nil, @readiness_probe : Api::Core::V1::Probe | Nil = nil, @resources : Api::Core::V1::ResourceRequirements | Nil = nil, @security_context : Api::Core::V1::SecurityContext | Nil = nil, @stdin : Bool | Nil = nil, @stdin_once : Bool | Nil = nil, @termination_message_path : String | Nil = nil, @termination_message_policy : String | Nil = nil, @tty : Bool | Nil = nil, @volume_mounts : Array | Nil = nil, @working_dir : String | Nil = nil)
    end
  end
end
