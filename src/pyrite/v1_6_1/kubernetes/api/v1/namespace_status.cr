# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# NamespaceStatus is information about the current status of a Namespace.
class Pyrite::V1_6_1::Kubernetes::Api::V1::NamespaceStatus
  # Phase is the current lifecycle phase of the namespace.More info: http://releases.k8s.io/HEAD/docs/design/namespaces.md#phases
  property phase : String?

  YAML.mapping({phase: {type: String, nilable: true, key: phase, getter: false, setter: false}}, true)

  JSON.mapping({phase: {type: String, nilable: true, key: phase, getter: false, setter: false}}, true)

  def initialize(@phase = nil)
  end
end
