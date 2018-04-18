# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents a volume that is populated with the contents of a git repository. Git repo volumes do not support ownership management. Git repo volumes support SELinux relabeling.
  class Api::Core::V1::GitRepoVolumeSource
    # Target directory name. Must not contain or start with '..'.  If '.' is supplied, the volume directory will be the git repository.  Otherwise, if specified, the volume will contain the git repository in the subdirectory with the given name.
    property directory : String | Nil

    # Repository URL
    property repository : String

    # Commit hash for the specified revision.
    property revision : String | Nil

    ::YAML.mapping({
      directory:  {type: String, nilable: true, key: "directory", getter: false, setter: false},
      repository: {type: String, nilable: false, key: "repository", getter: false, setter: false},
      revision:   {type: String, nilable: true, key: "revision", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      directory:  {type: String, nilable: true, key: "directory", getter: false, setter: false},
      repository: {type: String, nilable: false, key: "repository", getter: false, setter: false},
      revision:   {type: String, nilable: true, key: "revision", getter: false, setter: false},
    }, true)

    def initialize(*, @repository : String, @directory : String | Nil = nil, @revision : String | Nil = nil)
    end
  end
end
