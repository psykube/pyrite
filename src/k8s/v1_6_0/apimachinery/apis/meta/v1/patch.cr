require "yaml"
require "json"

# Patch is provided to give a concrete name and type to the Kubernetes PATCH request body.
class K8S::V1_6_0::Apimachinery::Apis::Meta::V1::Patch
  def initialize
  end
end
