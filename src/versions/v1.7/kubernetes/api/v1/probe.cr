# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
  class Kubernetes::Api::V1::Probe
    include ::JSON::Serializable
    include ::YAML::Serializable

    # One and only one of the following should be specified. Exec specifies the action to take.
    @[JSON::Field(key: "exec")]
    @[YAML::Field(key: "exec")]
    property exec : Kubernetes::Api::V1::ExecAction | Nil

    # Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
    @[JSON::Field(key: "failureThreshold")]
    @[YAML::Field(key: "failureThreshold")]
    property failure_threshold : Int32 | Nil

    # HTTPGet specifies the http request to perform.
    @[JSON::Field(key: "httpGet")]
    @[YAML::Field(key: "httpGet")]
    property http_get : Kubernetes::Api::V1::HTTPGetAction | Nil

    # Number of seconds after the container has started before liveness probes are initiated. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    @[JSON::Field(key: "initialDelaySeconds")]
    @[YAML::Field(key: "initialDelaySeconds")]
    property initial_delay_seconds : Int32 | Nil

    # How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
    @[JSON::Field(key: "periodSeconds")]
    @[YAML::Field(key: "periodSeconds")]
    property period_seconds : Int32 | Nil

    # Minimum consecutive successes for the probe to be considered successful after having failed. Defaults to 1. Must be 1 for liveness. Minimum value is 1.
    @[JSON::Field(key: "successThreshold")]
    @[YAML::Field(key: "successThreshold")]
    property success_threshold : Int32 | Nil

    # TCPSocket specifies an action involving a TCP port. TCP hooks not yet supported
    @[JSON::Field(key: "tcpSocket")]
    @[YAML::Field(key: "tcpSocket")]
    property tcp_socket : Kubernetes::Api::V1::TCPSocketAction | Nil

    # Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. More info: [https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes](https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes)
    @[JSON::Field(key: "timeoutSeconds")]
    @[YAML::Field(key: "timeoutSeconds")]
    property timeout_seconds : Int32 | Nil

    def initialize(*, @exec : Kubernetes::Api::V1::ExecAction | Nil = nil, @failure_threshold : Int32 | Nil = nil, @http_get : Kubernetes::Api::V1::HTTPGetAction | Nil = nil, @initial_delay_seconds : Int32 | Nil = nil, @period_seconds : Int32 | Nil = nil, @success_threshold : Int32 | Nil = nil, @tcp_socket : Kubernetes::Api::V1::TCPSocketAction | Nil = nil, @timeout_seconds : Int32 | Nil = nil)
    end
  end
end
