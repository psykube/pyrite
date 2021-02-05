# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Projection that may be projected along with other supported volume types
  class Api::Core::V1::VolumeProjection
    include ::JSON::Serializable
    include ::YAML::Serializable

    # information about the configMap data to project
    @[JSON::Field(key: "configMap")]
    @[YAML::Field(key: "configMap")]
    property config_map : Api::Core::V1::ConfigMapProjection | Nil

    # information about the downwardAPI data to project
    @[JSON::Field(key: "downwardAPI")]
    @[YAML::Field(key: "downwardAPI")]
    property downward_api : Api::Core::V1::DownwardAPIProjection | Nil

    # information about the secret data to project
    @[JSON::Field(key: "secret")]
    @[YAML::Field(key: "secret")]
    property secret : Api::Core::V1::SecretProjection | Nil

    def initialize(*, @config_map : Api::Core::V1::ConfigMapProjection | Nil = nil, @downward_api : Api::Core::V1::DownwardAPIProjection | Nil = nil, @secret : Api::Core::V1::SecretProjection | Nil = nil)
    end
  end
end
