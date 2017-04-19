# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Adapts a secret into a projected volume.
#
# The contents of the target Secret's Data field will be presented in a projected volume as files using the keys in the Data field as the file names. Note that this is identical to a secret volume source without the default mode.
class Pyrite::V1_6_1::Kubernetes::Api::V1::SecretProjection
  # If unspecified, each key-value pair in the Data field of the referenced Secret will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the Secret, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
  property items : Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::KeyToPath)?

  # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
  property name : String?

  # Specify whether the Secret or its key must be defined
  property optional : Bool?

  YAML.mapping({items:    {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::KeyToPath), nilable: true, key: items, getter: false, setter: false},
                name:     {type: String, nilable: true, key: name, getter: false, setter: false},
                optional: {type: Bool, nilable: true, key: optional, getter: false, setter: false}}, true)

  JSON.mapping({items:    {type: Array(::Pyrite::V1_6_1::Kubernetes::Api::V1::KeyToPath), nilable: true, key: items, getter: false, setter: false},
                name:     {type: String, nilable: true, key: name, getter: false, setter: false},
                optional: {type: Bool, nilable: true, key: optional, getter: false, setter: false}}, true)

  def initialize(@items : Array? = nil, @name : String? = nil, @optional : Bool? = nil)
  end
end
