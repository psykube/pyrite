# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
  class Api::Core::V1::Probe < Kubernetes::Spec
    # One and only one of the following should be specified. Exec specifies the action to take.
    @[::JSON::Field(key: "exec")]
    @[::YAML::Field(key: "exec")]
    property exec : Api::Core::V1::ExecAction | Nil

    # Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
    @[::JSON::Field(key: "failureThreshold")]
    @[::YAML::Field(key: "failureThreshold")]
    property failure_threshold : Int32 | Nil

    # HTTPGet specifies the http request to perform.
    @[::JSON::Field(key: "httpGet")]
    @[::YAML::Field(key: "httpGet")]
    property http_get : Api::Core::V1::HTTPGetAction | Nil

    # Number of seconds after the container has started before liveness probes are initiated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    @[::JSON::Field(key: "initialDelaySeconds")]
    @[::YAML::Field(key: "initialDelaySeconds")]
    property initial_delay_seconds : Int32 | Nil

    # How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
    @[::JSON::Field(key: "periodSeconds")]
    @[::YAML::Field(key: "periodSeconds")]
    property period_seconds : Int32 | Nil

    # Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
    @[::JSON::Field(key: "successThreshold")]
    @[::YAML::Field(key: "successThreshold")]
    property success_threshold : Int32 | Nil

    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    @[::JSON::Field(key: "tcpSocket")]
    @[::YAML::Field(key: "tcpSocket")]
    property tcp_socket : Api::Core::V1::TCPSocketAction | Nil

    # Optional duration in seconds the pod needs to terminate gracefully upon probe failure. The grace period is the duration in seconds after the processes running in the pod are sent a termination signal and the time when the processes are forcibly halted with a kill signal. Set this value longer than the expected cleanup time for your process. If this value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value overrides the value provided by the pod spec. Value must be non-negative integer. The value zero indicates stop immediately via the kill signal (no opportunity to shut down). This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate. Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
    @[::JSON::Field(key: "terminationGracePeriodSeconds")]
    @[::YAML::Field(key: "terminationGracePeriodSeconds")]
    property termination_grace_period_seconds : Int32 | Nil

    # Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    @[::JSON::Field(key: "timeoutSeconds")]
    @[::YAML::Field(key: "timeoutSeconds")]
    property timeout_seconds : Int32 | Nil

    def initialize(*, @exec : Api::Core::V1::ExecAction | Nil = nil, @failure_threshold : Int32 | Nil = nil, @http_get : Api::Core::V1::HTTPGetAction | Nil = nil, @initial_delay_seconds : Int32 | Nil = nil, @period_seconds : Int32 | Nil = nil, @success_threshold : Int32 | Nil = nil, @tcp_socket : Api::Core::V1::TCPSocketAction | Nil = nil, @termination_grace_period_seconds : Int32 | Nil = nil, @timeout_seconds : Int32 | Nil = nil)
    end
  end
end
