# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # ReplicationControllerList is a collection of replication controllers.
  class Definitions::V1::ReplicationControllerList
    # List of replication controllers. More info: [http://kubernetes.io/docs/user-guide/replication-controller](http://kubernetes.io/docs/user-guide/replication-controller)
    property items : Array(V1::ReplicationController)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V1::ReplicationController), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V1::ReplicationController), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
