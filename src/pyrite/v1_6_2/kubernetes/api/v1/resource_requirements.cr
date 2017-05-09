# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # ResourceRequirements describes the compute resource requirements.
  class Definitions::Kubernetes::Api::V1::ResourceRequirements
    # Limits describes the maximum amount of compute resources allowed. More info: [http://kubernetes.io/docs/user-guide/compute-resources/](http://kubernetes.io/docs/user-guide/compute-resources/)
    property limits : Hash(String, String)?

    # Requests describes the minimum amount of compute resources required. If Requests is omitted for a container, it defaults to Limits if that is explicitly specified, otherwise to an implementation-defined value. More info: [http://kubernetes.io/docs/user-guide/compute-resources/](http://kubernetes.io/docs/user-guide/compute-resources/)
    property requests : Hash(String, String)?

    YAML.mapping({limits:   {type: Hash(String, String), nilable: true, key: limits, getter: false, setter: false},
                  requests: {type: Hash(String, String), nilable: true, key: requests, getter: false, setter: false}}, true)

    JSON.mapping({limits:   {type: Hash(String, String), nilable: true, key: limits, getter: false, setter: false},
                  requests: {type: Hash(String, String), nilable: true, key: requests, getter: false, setter: false}}, true)

    def initialize(@limits : Hash(String, String)? = nil, @requests : Hash(String, String)? = nil)
    end
  end
end
