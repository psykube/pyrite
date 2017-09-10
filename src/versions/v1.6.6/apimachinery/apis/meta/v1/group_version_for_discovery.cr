# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # GroupVersion contains the ["group/version" and "version" string of a version. It is made a struct to keep extensibility.]("group/version" and "version" string of a version. It is made a struct to keep extensibility.)
  class Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery
    # groupVersion specifies the API group and version in the form ["group/version"]("group/version")
    property group_version : String

    # version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
    property version : String

    YAML.mapping({
      group_version: {type: String, nilable: false, key: "groupVersion"},
      version:       {type: String, nilable: false, key: "version"},
    }, true)

    JSON.mapping({
      group_version: {type: String, nilable: false, key: "groupVersion"},
      version:       {type: String, nilable: false, key: "version"},
    }, true)

    def initialize(*, @group_version : String | Nil = nil, @version : String | Nil = nil)
    end
  end
end
