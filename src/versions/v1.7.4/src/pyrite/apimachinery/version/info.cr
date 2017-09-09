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

    YAML.mapping({
      build_date:     {type: String, nilable: false, key: "buildDate"},
      compiler:       {type: String, nilable: false, key: "compiler"},
      git_commit:     {type: String, nilable: false, key: "gitCommit"},
      git_tree_state: {type: String, nilable: false, key: "gitTreeState"},
      git_version:    {type: String, nilable: false, key: "gitVersion"},
      go_version:     {type: String, nilable: false, key: "goVersion"},
      major:          {type: String, nilable: false, key: "major"},
      minor:          {type: String, nilable: false, key: "minor"},
      platform:       {type: String, nilable: false, key: "platform"},
    }, true)

    JSON.mapping({
      build_date:     {type: String, nilable: false, key: "buildDate"},
      compiler:       {type: String, nilable: false, key: "compiler"},
      git_commit:     {type: String, nilable: false, key: "gitCommit"},
      git_tree_state: {type: String, nilable: false, key: "gitTreeState"},
      git_version:    {type: String, nilable: false, key: "gitVersion"},
      go_version:     {type: String, nilable: false, key: "goVersion"},
      major:          {type: String, nilable: false, key: "major"},
      minor:          {type: String, nilable: false, key: "minor"},
      platform:       {type: String, nilable: false, key: "platform"},
    }, true)

    def initialize(*, @build_date : String | Nil = nil, @compiler : String | Nil = nil, @git_commit : String | Nil = nil, @git_tree_state : String | Nil = nil, @git_version : String | Nil = nil, @go_version : String | Nil = nil, @major : String | Nil = nil, @minor : String | Nil = nil, @platform : String | Nil = nil)
    end
  end
end
