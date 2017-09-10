# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Projection that may be projected along with other supported volume types
  class Kubernetes::Api::V1::VolumeProjection
    # information about the configMap data to project
    property config_map : Kubernetes::Api::V1::ConfigMapProjection | Nil

    # information about the downwardAPI data to project
    property downward_api : Kubernetes::Api::V1::DownwardAPIProjection | Nil

    # information about the secret data to project
    property secret : Kubernetes::Api::V1::SecretProjection | Nil

    YAML.mapping({
      config_map:   {type: Kubernetes::Api::V1::ConfigMapProjection, nilable: true, key: "configMap", getter: false, setter: false},
      downward_api: {type: Kubernetes::Api::V1::DownwardAPIProjection, nilable: true, key: "downwardAPI", getter: false, setter: false},
      secret:       {type: Kubernetes::Api::V1::SecretProjection, nilable: true, key: "secret", getter: false, setter: false},
    }, true)

    JSON.mapping({
      config_map:   {type: Kubernetes::Api::V1::ConfigMapProjection, nilable: true, key: "configMap", getter: false, setter: false},
      downward_api: {type: Kubernetes::Api::V1::DownwardAPIProjection, nilable: true, key: "downwardAPI", getter: false, setter: false},
      secret:       {type: Kubernetes::Api::V1::SecretProjection, nilable: true, key: "secret", getter: false, setter: false},
    }, true)

    def initialize(*, @config_map : Kubernetes::Api::V1::ConfigMapProjection | Nil = nil, @downward_api : Kubernetes::Api::V1::DownwardAPIProjection | Nil = nil, @secret : Kubernetes::Api::V1::SecretProjection | Nil = nil)
    end
  end
end
