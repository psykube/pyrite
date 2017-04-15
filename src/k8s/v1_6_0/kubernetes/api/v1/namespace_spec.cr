require "yaml"
require "json"

# NamespaceSpec describes the attributes on a Namespace.
class K8S::V1_6_0::Kubernetes::Api::V1::NamespaceSpec
  # Finalizers is an opaque list of values that must be empty to permanently remove object from storage.More info: http://releases.k8s.io/HEAD/docs/design/namespaces.md#finalizers
  property finalizers : Array(String)?

  YAML.mapping({finalizers: {type: Array(String), nilable: true, key: finalizers, getter: false, setter: false}}, true)

  JSON.mapping({finalizers: {type: Array(String), nilable: true, key: finalizers, getter: false, setter: false}}, true)

  def initialize(@finalizers = nil)
  end
end
