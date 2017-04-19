# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Status is a return value for calls that don't return other objects.
class Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::Status
  # Suggested HTTP return code for this status, 0 if not set.
  property code : Int32?

  # Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
  property details : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::StatusDetails

  # A human-readable description of the status of this operation.
  property message : String?

  # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
  property metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta

  # A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  property reason : String?

  # Status of the operation. One of: "Success" or "Failure". More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
  property status : String?

  YAML.mapping({
    api_version: {type: String, default: "Status", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    code:        {type: Int32, nilable: true, key: code, getter: false, setter: false},
    details:     {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::StatusDetails, nilable: true, key: details, getter: false, setter: false},
    message:     {type: String, nilable: true, key: message, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    reason:      {type: String, nilable: true, key: reason, getter: false, setter: false},
    status:      {type: String, nilable: true, key: status, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "Status", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    code:        {type: Int32, nilable: true, key: code, getter: false, setter: false},
    details:     {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::StatusDetails, nilable: true, key: details, getter: false, setter: false},
    message:     {type: String, nilable: true, key: message, getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta, nilable: true, key: metadata, getter: false, setter: false},
    reason:      {type: String, nilable: true, key: reason, getter: false, setter: false},
    status:      {type: String, nilable: true, key: status, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @code : Int32? = nil, @details : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::StatusDetails = nil, @kind : String? = nil, @message : String? = nil, @metadata : ::Pyrite::V1_6_0::Apimachinery::Apis::Meta::V1::ListMeta = nil, @reason : String? = nil, @status : String? = nil)
    @api_version = "Status"
    @kind = "v1"
  end
end
