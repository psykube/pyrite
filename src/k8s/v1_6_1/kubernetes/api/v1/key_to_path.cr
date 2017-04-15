require "yaml"
require "json"

# Maps a string key to a path within a volume.
class K8S::V1_6_1::Kubernetes::Api::V1::KeyToPath
  # The key to project.
  property key : String

  # Optional: mode bits to use on this file, must be a value between 0 and 0777.If not specified, the volume defaultMode will be used.This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  property mode : Int32?

  # The relative path of the file to map the key to.May not be an absolute path.May not contain the path element '..'.May not start with the string '..'.
  property path : String

  YAML.mapping({key:  {type: String, nilable: false, key: key, getter: false, setter: false},
                mode: {type: Int32, nilable: true, key: mode, getter: false, setter: false},
                path: {type: String, nilable: false, key: path, getter: false, setter: false}}, true)

  JSON.mapping({key:  {type: String, nilable: false, key: key, getter: false, setter: false},
                mode: {type: Int32, nilable: true, key: mode, getter: false, setter: false},
                path: {type: String, nilable: false, key: path, getter: false, setter: false}}, true)

  def initialize(@key, @path, @mode = nil)
  end
end
