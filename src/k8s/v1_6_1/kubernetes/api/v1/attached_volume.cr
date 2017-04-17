# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# AttachedVolume describes a volume attached to a node
class K8S::V1_6_1::Kubernetes::Api::V1::AttachedVolume
  # DevicePath represents the device path where the volume should be available
  property device_path : String

  # Name of the attached volume
  property name : String

  YAML.mapping({device_path: {type: String, nilable: false, key: devicePath, getter: false, setter: false},
                name:        {type: String, nilable: false, key: name, getter: false, setter: false}}, true)

  JSON.mapping({device_path: {type: String, nilable: false, key: devicePath, getter: false, setter: false},
                name:        {type: String, nilable: false, key: name, getter: false, setter: false}}, true)

  def initialize(@device_path, @name)
  end
end
