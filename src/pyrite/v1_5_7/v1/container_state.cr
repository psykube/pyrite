# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_7
  # ContainerState holds a possible state of container. Only one of its members may be specified. If none of them is specified, the default one is ContainerStateWaiting.
  class Definitions::V1::ContainerState
    # Details about a running container
    property running : V1::ContainerStateRunning

    # Details about a terminated container
    property terminated : V1::ContainerStateTerminated

    # Details about a waiting container
    property waiting : V1::ContainerStateWaiting

    YAML.mapping({running:    {type: V1::ContainerStateRunning, nilable: true, key: running, getter: false, setter: false},
                  terminated: {type: V1::ContainerStateTerminated, nilable: true, key: terminated, getter: false, setter: false},
                  waiting:    {type: V1::ContainerStateWaiting, nilable: true, key: waiting, getter: false, setter: false}}, true)

    JSON.mapping({running:    {type: V1::ContainerStateRunning, nilable: true, key: running, getter: false, setter: false},
                  terminated: {type: V1::ContainerStateTerminated, nilable: true, key: terminated, getter: false, setter: false},
                  waiting:    {type: V1::ContainerStateWaiting, nilable: true, key: waiting, getter: false, setter: false}}, true)

    def initialize(@running : V1::ContainerStateRunning = nil, @terminated : V1::ContainerStateTerminated = nil, @waiting : V1::ContainerStateWaiting = nil)
    end
  end
end
