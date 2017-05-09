# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # ListMeta describes metadata that synthetic resources must have, including lists and various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
  class Definitions::Unversioned::ListMeta
    # String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency)
    property resource_version : String?

    # SelfLink is a URL representing this object. Populated by the system. Read-only.
    property self_link : String?

    YAML.mapping({resource_version: {type: String, nilable: true, key: resourceVersion, getter: false, setter: false},
                  self_link:        {type: String, nilable: true, key: selfLink, getter: false, setter: false}}, true)

    JSON.mapping({resource_version: {type: String, nilable: true, key: resourceVersion, getter: false, setter: false},
                  self_link:        {type: String, nilable: true, key: selfLink, getter: false, setter: false}}, true)

    def initialize(@resource_version : String? = nil, @self_link : String? = nil)
    end
  end
end
