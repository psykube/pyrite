# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_4
  # Represents a host path mapped into a pod. Host path volumes do not support ownership management or SELinux relabeling.
  class Definitions::V1::HostPathVolumeSource
    # Path of the directory on the host. More info: [http://kubernetes.io/docs/user-guide/volumes#hostpath](http://kubernetes.io/docs/user-guide/volumes#hostpath)
    property path : String

    YAML.mapping({path: {type: String, nilable: false, key: path, getter: false, setter: false}}, true)

    JSON.mapping({path: {type: String, nilable: false, key: path, getter: false, setter: false}}, true)

    def initialize(@path : String? = nil)
    end
  end
end
