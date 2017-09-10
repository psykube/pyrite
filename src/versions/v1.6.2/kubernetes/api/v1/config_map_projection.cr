# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Adapts a ConfigMap into a projected volume.
  #
  # The contents of the target ConfigMap's Data field will be presented in a projected volume as files using the keys in the Data field as the file names, unless the items element is populated with specific mappings of keys to paths. Note that this is identical to a configmap volume source without the default mode.
  class Kubernetes::Api::V1::ConfigMapProjection
    # If unspecified, each key-value pair in the Data field of the referenced ConfigMap will be projected into the volume as a file whose name is the key and content is the value. If specified, the listed keys will be projected into the specified paths, and unlisted keys will not be present. If a key is specified which is not present in the ConfigMap, the volume setup will error unless it is marked optional. Paths must be relative and may not contain the '..' path or start with '..'.
    property items : Array(Kubernetes::Api::V1::KeyToPath) | Nil

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String | Nil

    # Specify whether the ConfigMap or it's keys must be defined
    property optional : Bool | Nil

    YAML.mapping({
      items:    {type: Array(Kubernetes::Api::V1::KeyToPath), nilable: true, key: "items"},
      name:     {type: String, nilable: true, key: "name"},
      optional: {type: Bool, nilable: true, key: "optional"},
    }, true)

    JSON.mapping({
      items:    {type: Array(Kubernetes::Api::V1::KeyToPath), nilable: true, key: "items"},
      name:     {type: String, nilable: true, key: "name"},
      optional: {type: Bool, nilable: true, key: "optional"},
    }, true)

    def initialize(*, @items : Array | Nil = nil, @name : String | Nil = nil, @optional : Bool | Nil = nil)
    end
  end
end
