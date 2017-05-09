# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_7
  # StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
  class Definitions::Unversioned::StatusDetails
    # The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
    property causes : Array(Unversioned::StatusCause)?

    # The group attribute of the resource associated with the status StatusReason.
    property group : String?

    # The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    property kind : String?

    # The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
    property name : String?

    # If specified, the time in seconds before the operation should be retried.
    property retry_after_seconds : Int32?

    YAML.mapping({causes:              {type: Array(Unversioned::StatusCause), nilable: true, key: causes, getter: false, setter: false},
                  group:               {type: String, nilable: true, key: group, getter: false, setter: false},
                  kind:                {type: String, nilable: true, key: kind, getter: false, setter: false},
                  name:                {type: String, nilable: true, key: name, getter: false, setter: false},
                  retry_after_seconds: {type: Int32, nilable: true, key: retryAfterSeconds, getter: false, setter: false}}, true)

    JSON.mapping({causes:              {type: Array(Unversioned::StatusCause), nilable: true, key: causes, getter: false, setter: false},
                  group:               {type: String, nilable: true, key: group, getter: false, setter: false},
                  kind:                {type: String, nilable: true, key: kind, getter: false, setter: false},
                  name:                {type: String, nilable: true, key: name, getter: false, setter: false},
                  retry_after_seconds: {type: Int32, nilable: true, key: retryAfterSeconds, getter: false, setter: false}}, true)

    def initialize(@causes : Array? = nil, @group : String? = nil, @kind : String? = nil, @name : String? = nil, @retry_after_seconds : Int32? = nil)
    end
  end
end
