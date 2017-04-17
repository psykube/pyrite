# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# DaemonEndpoint contains information about a single Daemon endpoint.
class K8S::V1_6_1::Kubernetes::Api::V1::DaemonEndpoint
  # Port number of the given endpoint.
  property port : Int32

  YAML.mapping({port: {type: Int32, nilable: false, key: Port, getter: false, setter: false}}, true)

  JSON.mapping({port: {type: Int32, nilable: false, key: Port, getter: false, setter: false}}, true)

  def initialize(@port)
  end
end
