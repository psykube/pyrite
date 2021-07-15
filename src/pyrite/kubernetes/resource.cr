require "./spec"

module Pyrite::Kubernetes
  abstract class Resource < Spec
    @[::JSON::Field(key: "apiVersion")]
    @[::YAML::Field(key: "apiVersion")]
    # The API and version we are accessing.
    getter api_version : String

    @[::JSON::Field(key: "kind")]
    @[::YAML::Field(key: "kind")]
    # The resource kind withing the given apiVersion.
    getter kind : String
  end
end
