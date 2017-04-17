# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ContainerState holds a possible state of container.Only one of its members may be specified.If none of them is specified, the default one is ContainerStateWaiting.
class Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerState
  # Details about a running container
  property running : ::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStateRunning

  # Details about a terminated container
  property terminated : ::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStateTerminated

  # Details about a waiting container
  property waiting : ::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStateWaiting

  YAML.mapping({running:    {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStateRunning, nilable: true, key: running, getter: false, setter: false},
                terminated: {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStateTerminated, nilable: true, key: terminated, getter: false, setter: false},
                waiting:    {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStateWaiting, nilable: true, key: waiting, getter: false, setter: false}}, true)

  JSON.mapping({running:    {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStateRunning, nilable: true, key: running, getter: false, setter: false},
                terminated: {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStateTerminated, nilable: true, key: terminated, getter: false, setter: false},
                waiting:    {type: ::Pyrite::V1_6_0::Kubernetes::Api::V1::ContainerStateWaiting, nilable: true, key: waiting, getter: false, setter: false}}, true)

  def initialize(@running = nil, @terminated = nil, @waiting = nil)
  end
end
