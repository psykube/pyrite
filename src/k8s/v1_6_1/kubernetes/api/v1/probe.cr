# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.
class K8S::V1_6_1::Kubernetes::Api::V1::Probe
  # One and only one of the following should be specified.Exec specifies the action to take.
  property exec : ::K8S::V1_6_1::Kubernetes::Api::V1::ExecAction

  # Minimum consecutive failures for the probe to be considered failed after having succeeded.Defaults to 3.Minimum value is 1.
  property failure_threshold : Int32?

  # HTTPGet specifies the http request to perform.
  property http_get : ::K8S::V1_6_1::Kubernetes::Api::V1::HTTPGetAction

  # Number of seconds after the container has started before liveness probes are initiated.More info: http://kubernetes.io/docs/user-guide/pod-states#container-probes
  property initial_delay_seconds : Int32?

  # How often (in seconds) to perform the probe.Default to 10 seconds.Minimum value is 1.
  property period_seconds : Int32?

  # Minimum consecutive successes for the probe to be considered successful after having failed.Defaults to 1.Must be 1 for liveness.Minimum value is 1.
  property success_threshold : Int32?

  # TCPSocket specifies an action involving a TCP port.TCP hooks not yet supported
  property tcp_socket : ::K8S::V1_6_1::Kubernetes::Api::V1::TCPSocketAction

  # Number of seconds after which the probe times out.Defaults to 1 second.Minimum value is 1.More info: http://kubernetes.io/docs/user-guide/pod-states#container-probes
  property timeout_seconds : Int32?

  YAML.mapping({exec:                  {type: ::K8S::V1_6_1::Kubernetes::Api::V1::ExecAction, nilable: true, key: exec, getter: false, setter: false},
                failure_threshold:     {type: Int32, nilable: true, key: failureThreshold, getter: false, setter: false},
                http_get:              {type: ::K8S::V1_6_1::Kubernetes::Api::V1::HTTPGetAction, nilable: true, key: httpGet, getter: false, setter: false},
                initial_delay_seconds: {type: Int32, nilable: true, key: initialDelaySeconds, getter: false, setter: false},
                period_seconds:        {type: Int32, nilable: true, key: periodSeconds, getter: false, setter: false},
                success_threshold:     {type: Int32, nilable: true, key: successThreshold, getter: false, setter: false},
                tcp_socket:            {type: ::K8S::V1_6_1::Kubernetes::Api::V1::TCPSocketAction, nilable: true, key: tcpSocket, getter: false, setter: false},
                timeout_seconds:       {type: Int32, nilable: true, key: timeoutSeconds, getter: false, setter: false}}, true)

  JSON.mapping({exec:                  {type: ::K8S::V1_6_1::Kubernetes::Api::V1::ExecAction, nilable: true, key: exec, getter: false, setter: false},
                failure_threshold:     {type: Int32, nilable: true, key: failureThreshold, getter: false, setter: false},
                http_get:              {type: ::K8S::V1_6_1::Kubernetes::Api::V1::HTTPGetAction, nilable: true, key: httpGet, getter: false, setter: false},
                initial_delay_seconds: {type: Int32, nilable: true, key: initialDelaySeconds, getter: false, setter: false},
                period_seconds:        {type: Int32, nilable: true, key: periodSeconds, getter: false, setter: false},
                success_threshold:     {type: Int32, nilable: true, key: successThreshold, getter: false, setter: false},
                tcp_socket:            {type: ::K8S::V1_6_1::Kubernetes::Api::V1::TCPSocketAction, nilable: true, key: tcpSocket, getter: false, setter: false},
                timeout_seconds:       {type: Int32, nilable: true, key: timeoutSeconds, getter: false, setter: false}}, true)

  def initialize(@exec = nil, @failure_threshold = nil, @http_get = nil, @initial_delay_seconds = nil, @period_seconds = nil, @success_threshold = nil, @tcp_socket = nil, @timeout_seconds = nil)
  end
end
