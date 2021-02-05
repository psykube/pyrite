# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # GroupVersion contains the ["group/version" and "version" string of a version. It is made a struct to keep extensibility.]("group/version" and "version" string of a version. It is made a struct to keep extensibility.)
  class Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery
    include ::JSON::Serializable
    include ::YAML::Serializable

    # groupVersion specifies the API group and version in the form ["group/version"]("group/version")
    @[::JSON::Field(key: "groupVersion")]
    @[::YAML::Field(key: "groupVersion")]
    property group_version : String

    # version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
    @[::JSON::Field(key: "version")]
    @[::YAML::Field(key: "version")]
    property version : String

    def initialize(*, @group_version : String, @version : String)
    end
  end
end
