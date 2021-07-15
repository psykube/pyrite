# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Projection that may be projected along with other supported volume types
  class Kubernetes::Api::V1::VolumeProjection < Kubernetes::Spec
    # information about the configMap data to project
    @[::JSON::Field(key: "configMap")]
    @[::YAML::Field(key: "configMap")]
    property config_map : Kubernetes::Api::V1::ConfigMapProjection | Nil

    # information about the downwardAPI data to project
    @[::JSON::Field(key: "downwardAPI")]
    @[::YAML::Field(key: "downwardAPI")]
    property downward_api : Kubernetes::Api::V1::DownwardAPIProjection | Nil

    # information about the secret data to project
    @[::JSON::Field(key: "secret")]
    @[::YAML::Field(key: "secret")]
    property secret : Kubernetes::Api::V1::SecretProjection | Nil

    def initialize(*, @config_map : Kubernetes::Api::V1::ConfigMapProjection | Nil = nil, @downward_api : Kubernetes::Api::V1::DownwardAPIProjection | Nil = nil, @secret : Kubernetes::Api::V1::SecretProjection | Nil = nil)
    end
  end
end
