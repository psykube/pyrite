# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # defines the host volume conditions that will be enabled by a policy for pods to use. It requires the path prefix to be defined.
  class Api::Extensions::V1beta1::AllowedHostPath
    include ::JSON::Serializable
    include ::YAML::Serializable

    # is the path prefix that the host volume must match. It does not support `*`. Trailing slashes are trimmed when validating the path prefix with a host path.
    #
    # Examples: [`/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`](`/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`)
    @[JSON::Field(key: "pathPrefix")]
    @[YAML::Field(key: "pathPrefix")]
    property path_prefix : String | Nil

    def initialize(*, @path_prefix : String | Nil = nil)
    end
  end
end
