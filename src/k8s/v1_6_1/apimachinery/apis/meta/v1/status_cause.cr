require "yaml"
require "json"

# StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
class K8S::V1_6_1::Apimachinery::Apis::Meta::V1::StatusCause
  # The field of the resource that has caused this error, as named by its JSON serialization.May include dot and postfix notation for nested attributes.Arrays are zero-indexed. Fields may appear more than once in an array of causes due to fields having multiple errors.Optional.
  #
  # Examples:
  #   "name" - the field "name" on the current resource
  #   "items[0].name" - the field "name" on the first array entry in "items"
  property field : String?

  # A human-readable description of the cause of the error. This field may be presented as-is to a reader.
  property message : String?

  # A machine-readable description of the cause of the error.If this value is empty there is no information available.
  property reason : String?

  YAML.mapping({field:   {type: String, nilable: true, key: field, getter: false, setter: false},
                message: {type: String, nilable: true, key: message, getter: false, setter: false},
                reason:  {type: String, nilable: true, key: reason, getter: false, setter: false}}, true)

  JSON.mapping({field:   {type: String, nilable: true, key: field, getter: false, setter: false},
                message: {type: String, nilable: true, key: message, getter: false, setter: false},
                reason:  {type: String, nilable: true, key: reason, getter: false, setter: false}}, true)

  def initialize(@field = nil, @message = nil, @reason = nil)
  end
end
