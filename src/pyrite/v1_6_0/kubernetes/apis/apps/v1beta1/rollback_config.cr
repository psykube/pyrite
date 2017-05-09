# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_0
  class Definitions::Kubernetes::Apis::Apps::V1beta1::RollbackConfig
    # The revision to rollback to. If set to 0, rollbck to the last revision.
    property revision : Int32?

    YAML.mapping({revision: {type: Int32, nilable: true, key: revision, getter: false, setter: false}}, true)

    JSON.mapping({revision: {type: Int32, nilable: true, key: revision, getter: false, setter: false}}, true)

    def initialize(@revision : Int32? = nil)
    end
  end
end
