# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Represents an empty directory for a pod. Empty directory volumes support ownership management and SELinux relabeling.
  class Api::Core::V1::EmptyDirVolumeSource
    # What type of storage medium should back this directory. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: [https://kubernetes.io/docs/concepts/storage/volumes#emptydir](https://kubernetes.io/docs/concepts/storage/volumes#emptydir)
    property medium : String | Nil

    # Total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: [http://kubernetes.io/docs/user-guide/volumes#emptydir](http://kubernetes.io/docs/user-guide/volumes#emptydir)
    property size_limit : Int32 | Nil

    YAML.mapping({
      medium:     {type: String, nilable: true, key: "medium", getter: false, setter: false},
      size_limit: {type: Int32, nilable: true, key: "sizeLimit", getter: false, setter: false},
    }, true)

    JSON.mapping({
      medium:     {type: String, nilable: true, key: "medium", getter: false, setter: false},
      size_limit: {type: Int32, nilable: true, key: "sizeLimit", getter: false, setter: false},
    }, true)

    def initialize(*, @medium : String | Nil = nil, @size_limit : Int32 | Nil = nil)
    end
  end
end
