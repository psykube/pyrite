# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a volume that is populated with the contents of a git repository. Git repo volumes do not support ownership management. Git repo volumes support SELinux relabeling.
  class Kubernetes::Api::V1::GitRepoVolumeSource
    # Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
    property directory : String | Nil

    # Repository URL
    property repository : String

    # Commit hash for the specified revision.
    property revision : String | Nil

    YAML.mapping({
      directory:  {type: String, nilable: true, key: "directory"},
      repository: {type: String, nilable: false, key: "repository"},
      revision:   {type: String, nilable: true, key: "revision"},
    }, true)

    JSON.mapping({
      directory:  {type: String, nilable: true, key: "directory"},
      repository: {type: String, nilable: false, key: "repository"},
      revision:   {type: String, nilable: true, key: "revision"},
    }, true)

    def initialize(*, @directory : String | Nil = nil, @repository : String | Nil = nil, @revision : String | Nil = nil)
    end
  end
end
