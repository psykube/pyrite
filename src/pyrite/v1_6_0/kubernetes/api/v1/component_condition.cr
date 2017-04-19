# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Information about the condition of a component.
class Pyrite::V1_6_0::Kubernetes::Api::V1::ComponentCondition
  # Condition error code for a component. For example, a health check error code.
  property error : String?

  # Message about the condition for a component. For example, information about a health check.
  property message : String?

  # Status of the condition for a component. Valid values for "Healthy": "True", "False", or "Unknown".
  property status : String

  # Type of condition for a component. Valid value: "Healthy"
  property type : String

  YAML.mapping({error:   {type: String, nilable: true, key: error, getter: false, setter: false},
                message: {type: String, nilable: true, key: message, getter: false, setter: false},
                status:  {type: String, nilable: false, key: status, getter: false, setter: false},
                type:    {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

  JSON.mapping({error:   {type: String, nilable: true, key: error, getter: false, setter: false},
                message: {type: String, nilable: true, key: message, getter: false, setter: false},
                status:  {type: String, nilable: false, key: status, getter: false, setter: false},
                type:    {type: String, nilable: false, key: type, getter: false, setter: false}}, true)

  def initialize(@error : String? = nil, @message : String? = nil, @status : String? = nil, @type : String? = nil)
  end
end
