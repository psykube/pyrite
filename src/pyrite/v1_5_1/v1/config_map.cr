# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # ConfigMap holds configuration data for pods to consume.
  class Definitions::V1::ConfigMap
    # Data contains the configuration data. Each key must be a valid DNS_SUBDOMAIN with an optional leading dot.
    property data : Hash(String, String)?

    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    YAML.mapping({data:     {type: Hash(String, String), nilable: true, key: data, getter: false, setter: false},
                  metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({data:     {type: Hash(String, String), nilable: true, key: data, getter: false, setter: false},
                  metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@data : Hash(String, String)? = nil, @metadata : V1::ObjectMeta = nil)
    end
  end
end
