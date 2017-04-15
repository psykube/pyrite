require "yaml"
require "json"

# ContainerStateWaiting is a waiting state of a container.
class K8S::V1_6_1::Kubernetes::Api::V1::ContainerStateWaiting
  # Message regarding why the container is not yet running.
  property message : String?

  # (brief) reason the container is not yet running.
  property reason : String?

  YAML.mapping({message: {type: String, nilable: true, key: message, getter: false, setter: false},
                reason:  {type: String, nilable: true, key: reason, getter: false, setter: false}}, true)

  JSON.mapping({message: {type: String, nilable: true, key: message, getter: false, setter: false},
                reason:  {type: String, nilable: true, key: reason, getter: false, setter: false}}, true)

  def initialize(@message = nil, @reason = nil)
  end
end
