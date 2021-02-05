# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a volume that is populated with the contents of a git repository. Git repo volumes do not support ownership management. Git repo volumes support SELinux relabeling.
  class Kubernetes::Api::V1::GitRepoVolumeSource
    include ::JSON::Serializable
    include ::YAML::Serializable

    # Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
    @[::JSON::Field(key: "directory")]
    @[::YAML::Field(key: "directory")]
    property directory : String | Nil

    # Repository URL
    @[::JSON::Field(key: "repository")]
    @[::YAML::Field(key: "repository")]
    property repository : String

    # Commit hash for the specified revision.
    @[::JSON::Field(key: "revision")]
    @[::YAML::Field(key: "revision")]
    property revision : String | Nil

    def initialize(*, @directory : String | Nil = nil, @repository : String, @revision : String | Nil = nil)
    end
  end
end
