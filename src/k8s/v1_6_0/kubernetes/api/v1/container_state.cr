require "yaml"
require "json"

# ContainerState holds a possible state of container.Only one of its members may be specified.If none of them is specified, the default one is ContainerStateWaiting.
class K8S::V1_6_0::Kubernetes::Api::V1::ContainerState
  # Details about a running container
  property running : ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateRunning

  # Details about a terminated container
  property terminated : ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateTerminated

  # Details about a waiting container
  property waiting : ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateWaiting

  YAML.mapping({running:    {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateRunning, nilable: true, key: running, getter: false, setter: false},
                terminated: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateTerminated, nilable: true, key: terminated, getter: false, setter: false},
                waiting:    {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateWaiting, nilable: true, key: waiting, getter: false, setter: false}}, true)

  JSON.mapping({running:    {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateRunning, nilable: true, key: running, getter: false, setter: false},
                terminated: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateTerminated, nilable: true, key: terminated, getter: false, setter: false},
                waiting:    {type: ::K8S::V1_6_0::Kubernetes::Api::V1::ContainerStateWaiting, nilable: true, key: waiting, getter: false, setter: false}}, true)

  def initialize(@running = nil, @terminated = nil, @waiting = nil)
  end
end
