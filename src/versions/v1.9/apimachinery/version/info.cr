# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Info contains versioning information. how we'll want to distribute that information.
  class Apimachinery::Version::Info < Kubernetes::Spec
    @[::JSON::Field(key: "buildDate")]
    @[::YAML::Field(key: "buildDate")]
    property build_date : String

    @[::JSON::Field(key: "compiler")]
    @[::YAML::Field(key: "compiler")]
    property compiler : String

    @[::JSON::Field(key: "gitCommit")]
    @[::YAML::Field(key: "gitCommit")]
    property git_commit : String

    @[::JSON::Field(key: "gitTreeState")]
    @[::YAML::Field(key: "gitTreeState")]
    property git_tree_state : String

    @[::JSON::Field(key: "gitVersion")]
    @[::YAML::Field(key: "gitVersion")]
    property git_version : String

    @[::JSON::Field(key: "goVersion")]
    @[::YAML::Field(key: "goVersion")]
    property go_version : String

    @[::JSON::Field(key: "major")]
    @[::YAML::Field(key: "major")]
    property major : String

    @[::JSON::Field(key: "minor")]
    @[::YAML::Field(key: "minor")]
    property minor : String

    @[::JSON::Field(key: "platform")]
    @[::YAML::Field(key: "platform")]
    property platform : String

    def initialize(*, @build_date : String, @compiler : String, @git_commit : String, @git_tree_state : String, @git_version : String, @go_version : String, @major : String, @minor : String, @platform : String)
    end
  end
end
