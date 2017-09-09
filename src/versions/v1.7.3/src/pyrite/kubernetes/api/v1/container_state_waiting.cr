# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ContainerStateWaiting is a waiting state of a container.
  class Kubernetes::Api::V1::ContainerStateWaiting
    # Message regarding why the container is not yet running.
    property message : String | Nil

    # (brief) reason the container is not yet running.
    property reason : String | Nil

    YAML.mapping({
      message: {type: String, nilable: true, key: "message"},
      reason:  {type: String, nilable: true, key: "reason"},
    }, true)

    JSON.mapping({
      message: {type: String, nilable: true, key: "message"},
      reason:  {type: String, nilable: true, key: "reason"},
    }, true)

    def initialize(*, @message : String | Nil = nil, @reason : String | Nil = nil)
    end
  end
end
