# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# ContainerStateTerminated is a terminated state of a container.
class Pyrite::V1_6_1::Kubernetes::Api::V1::ContainerStateTerminated
  # Container's ID in the format 'docker://<container_id>'
  property container_id : String?

  # Exit status from the last termination of the container
  property exit_code : Int32

  # Time at which the container last terminated
  property finished_at : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time

  # Message regarding the last termination of the container
  property message : String?

  # (brief) reason from the last termination of the container
  property reason : String?

  # Signal from the last termination of the container
  property signal : Int32?

  # Time at which previous execution of the container started
  property started_at : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time

  YAML.mapping({container_id: {type: String, nilable: true, key: containerID, getter: false, setter: false},
                exit_code:    {type: Int32, nilable: false, key: exitCode, getter: false, setter: false},
                finished_at:  {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: finishedAt, getter: false, setter: false},
                message:      {type: String, nilable: true, key: message, getter: false, setter: false},
                reason:       {type: String, nilable: true, key: reason, getter: false, setter: false},
                signal:       {type: Int32, nilable: true, key: signal, getter: false, setter: false},
                started_at:   {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: startedAt, getter: false, setter: false}}, true)

  JSON.mapping({container_id: {type: String, nilable: true, key: containerID, getter: false, setter: false},
                exit_code:    {type: Int32, nilable: false, key: exitCode, getter: false, setter: false},
                finished_at:  {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: finishedAt, getter: false, setter: false},
                message:      {type: String, nilable: true, key: message, getter: false, setter: false},
                reason:       {type: String, nilable: true, key: reason, getter: false, setter: false},
                signal:       {type: Int32, nilable: true, key: signal, getter: false, setter: false},
                started_at:   {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Time, nilable: true, key: startedAt, getter: false, setter: false}}, true)

  def initialize(@exit_code, @container_id = nil, @finished_at = nil, @message = nil, @reason = nil, @signal = nil, @started_at = nil)
  end
end
