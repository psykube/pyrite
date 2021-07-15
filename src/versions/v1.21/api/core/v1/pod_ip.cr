# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # IP address information for entries in the (plural) PodIPs field. Each entry includes:
  #    IP: An IP address allocated to the pod. Routable at least within the cluster.
  class Api::Core::V1::PodIP < Kubernetes::Spec
    # ip is an IP address (IPv4 or IPv6) assigned to the pod
    @[::JSON::Field(key: "ip")]
    @[::YAML::Field(key: "ip")]
    property ip : String | Nil

    def initialize(*, @ip : String | Nil = nil)
    end
  end
end
