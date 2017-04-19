# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Lifecycle describes actions that the management system should take in response to container lifecycle events. For the PostStart and PreStop lifecycle handlers, management of the container blocks until the action is complete, unless the container process fails, in which case the handler is aborted.
class Pyrite::V1_6_1::Kubernetes::Api::V1::Lifecycle
  # PostStart is called immediately after a container is created. If the handler fails, the container is terminated and restarted according to its restart policy. Other management of the container blocks until the hook completes. More info: [http://kubernetes.io/docs/user-guide/container-environment#hook-details](http://kubernetes.io/docs/user-guide/container-environment#hook-details)
  property post_start : ::Pyrite::V1_6_1::Kubernetes::Api::V1::Handler

  # PreStop is called immediately before a container is terminated. The container is terminated after the handler completes. The reason for termination is passed to the handler. Regardless of the outcome of the handler, the container is eventually terminated. Other management of the container blocks until the hook completes. More info: [http://kubernetes.io/docs/user-guide/container-environment#hook-details](http://kubernetes.io/docs/user-guide/container-environment#hook-details)
  property pre_stop : ::Pyrite::V1_6_1::Kubernetes::Api::V1::Handler

  YAML.mapping({post_start: {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::Handler, nilable: true, key: postStart, getter: false, setter: false},
                pre_stop:   {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::Handler, nilable: true, key: preStop, getter: false, setter: false}}, true)

  JSON.mapping({post_start: {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::Handler, nilable: true, key: postStart, getter: false, setter: false},
                pre_stop:   {type: ::Pyrite::V1_6_1::Kubernetes::Api::V1::Handler, nilable: true, key: preStop, getter: false, setter: false}}, true)

  def initialize(@post_start : ::Pyrite::V1_6_1::Kubernetes::Api::V1::Handler = nil, @pre_stop : ::Pyrite::V1_6_1::Kubernetes::Api::V1::Handler = nil)
  end
end
