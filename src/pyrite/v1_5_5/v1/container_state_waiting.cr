# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_5
  # ContainerStateWaiting is a waiting state of a container.
  class Definitions::V1::ContainerStateWaiting
    # Message regarding why the container is not yet running.
    property message : String?

    # (brief) reason the container is not yet running.
    property reason : String?

    YAML.mapping({message: {type: String, nilable: true, key: message, getter: false, setter: false},
                  reason:  {type: String, nilable: true, key: reason, getter: false, setter: false}}, true)

    JSON.mapping({message: {type: String, nilable: true, key: message, getter: false, setter: false},
                  reason:  {type: String, nilable: true, key: reason, getter: false, setter: false}}, true)

    def initialize(@message : String? = nil, @reason : String? = nil)
    end
  end
end
