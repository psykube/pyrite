# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# GroupVersion contains the ["group/version" and "version" string of a version. It is made a struct to keep extensibility.]("group/version" and "version" string of a version. It is made a struct to keep extensibility.)
class Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::GroupVersionForDiscovery
  # groupVersion specifies the API group and version in the form ["group/version"]("group/version")
  property group_version : String

  # version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
  property version : String

  YAML.mapping({group_version: {type: String, nilable: false, key: groupVersion, getter: false, setter: false},
                version:       {type: String, nilable: false, key: version, getter: false, setter: false}}, true)

  JSON.mapping({group_version: {type: String, nilable: false, key: groupVersion, getter: false, setter: false},
                version:       {type: String, nilable: false, key: version, getter: false, setter: false}}, true)

  def initialize(@group_version : String? = nil, @version : String? = nil)
  end
end
