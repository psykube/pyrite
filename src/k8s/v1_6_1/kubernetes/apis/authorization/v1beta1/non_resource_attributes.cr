# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
class K8S::V1_6_1::Kubernetes::Apis::Authorization::V1beta1::NonResourceAttributes
  # Path is the URL path of the request
  property path : String?

  # Verb is the standard HTTP verb
  property verb : String?

  YAML.mapping({path: {type: String, nilable: true, key: path, getter: false, setter: false},
                verb: {type: String, nilable: true, key: verb, getter: false, setter: false}}, true)

  JSON.mapping({path: {type: String, nilable: true, key: path, getter: false, setter: false},
                verb: {type: String, nilable: true, key: verb, getter: false, setter: false}}, true)

  def initialize(@path = nil, @verb = nil)
  end
end
