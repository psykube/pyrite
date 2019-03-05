# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Info contains versioning information. how we'll want to distribute that information.
  class Apimachinery::Version::Info
    property build_date : String

    property compiler : String

    property git_commit : String

    property git_tree_state : String

    property git_version : String

    property go_version : String

    property major : String

    property minor : String

    property platform : String

    ::YAML.mapping({
      build_date:     {type: String, nilable: false, key: "buildDate", getter: false, setter: false},
      compiler:       {type: String, nilable: false, key: "compiler", getter: false, setter: false},
      git_commit:     {type: String, nilable: false, key: "gitCommit", getter: false, setter: false},
      git_tree_state: {type: String, nilable: false, key: "gitTreeState", getter: false, setter: false},
      git_version:    {type: String, nilable: false, key: "gitVersion", getter: false, setter: false},
      go_version:     {type: String, nilable: false, key: "goVersion", getter: false, setter: false},
      major:          {type: String, nilable: false, key: "major", getter: false, setter: false},
      minor:          {type: String, nilable: false, key: "minor", getter: false, setter: false},
      platform:       {type: String, nilable: false, key: "platform", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      build_date:     {type: String, nilable: false, key: "buildDate", getter: false, setter: false},
      compiler:       {type: String, nilable: false, key: "compiler", getter: false, setter: false},
      git_commit:     {type: String, nilable: false, key: "gitCommit", getter: false, setter: false},
      git_tree_state: {type: String, nilable: false, key: "gitTreeState", getter: false, setter: false},
      git_version:    {type: String, nilable: false, key: "gitVersion", getter: false, setter: false},
      go_version:     {type: String, nilable: false, key: "goVersion", getter: false, setter: false},
      major:          {type: String, nilable: false, key: "major", getter: false, setter: false},
      minor:          {type: String, nilable: false, key: "minor", getter: false, setter: false},
      platform:       {type: String, nilable: false, key: "platform", getter: false, setter: false},
    }, true)

    def initialize(*, @build_date : String, @compiler : String, @git_commit : String, @git_tree_state : String, @git_version : String, @go_version : String, @major : String, @minor : String, @platform : String)
    end
  end
end
