# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ContainerStatus contains details for the current status of this container.
class Pyrite::V1_6_1::Kubernetes::Api::V1::ContainerStatus
  # Container's ID in the format 'docker://<container_id>'.More info: http://kubernetes.io/docs/user-guide/container-environment#container-information
  property container_id : String?

  # The image the container is running.More info: http://kubernetes.io/docs/user-guide/images
  property image : String

  # ImageID of the container's image.
  property image_id : String

  # Details about the container's last termination condition.
  property last_state : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ContainerState

  # This must be a DNS_LABEL.Each container in a pod must have a unique name.Cannot be updated.
  property name : String

  # Specifies whether the container has passed its readiness probe.
  property ready : Bool

  # The number of times the container has been restarted, currently based on the number of dead containers that have not yet been removed.Note that this is calculated from dead containers.But those containers are subject to garbage collection.This value will get capped at 5 by GC.
  property restart_count : Int32

  # Details about the container's current condition.
  property state : ::Pyrite::V1_6_1::Kubernetes::Api::V1::ContainerState

  YAML.mapping({container_id:  {type: String, nilable: true, key: containerID, getter: false, setter: false},
                image:         {type: String, nilable: false, key: image, getter: false, setter: false},
                image_id:      {type: String, nilable: false, key: imageID, getter: false, setter: false},
                last_state:    {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ContainerState, nilable: true, key: lastState, getter: false, setter: false},
                name:          {type: String, nilable: false, key: name, getter: false, setter: false},
                ready:         {type: Bool, nilable: false, key: ready, getter: false, setter: false},
                restart_count: {type: Int32, nilable: false, key: restartCount, getter: false, setter: false},
                state:         {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ContainerState, nilable: true, key: state, getter: false, setter: false}}, true)

  JSON.mapping({container_id:  {type: String, nilable: true, key: containerID, getter: false, setter: false},
                image:         {type: String, nilable: false, key: image, getter: false, setter: false},
                image_id:      {type: String, nilable: false, key: imageID, getter: false, setter: false},
                last_state:    {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ContainerState, nilable: true, key: lastState, getter: false, setter: false},
                name:          {type: String, nilable: false, key: name, getter: false, setter: false},
                ready:         {type: Bool, nilable: false, key: ready, getter: false, setter: false},
                restart_count: {type: Int32, nilable: false, key: restartCount, getter: false, setter: false},
                state:         {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::ContainerState, nilable: true, key: state, getter: false, setter: false}}, true)

  def initialize(@image, @image_id, @name, @ready, @restart_count, @container_id = nil, @last_state = nil, @state = nil)
  end
end
