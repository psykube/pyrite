# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # LimitRangeSpec defines a [min/max usage limit for resources that match on kind.](min/max usage limit for resources that match on kind.)
  class Kubernetes::Api::V1::LimitRangeSpec < Kubernetes::Spec
    # Limits is the list of LimitRangeItem objects that are enforced.
    @[::JSON::Field(key: "limits")]
    @[::YAML::Field(key: "limits")]
    property limits : Array(Kubernetes::Api::V1::LimitRangeItem)

    def initialize(*, @limits : Array)
    end
  end
end
