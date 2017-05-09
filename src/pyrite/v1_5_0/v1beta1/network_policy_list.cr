# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # Network Policy List is a list of NetworkPolicy objects.
  class Definitions::V1beta1::NetworkPolicyList
    # Items is a list of schema objects.
    property items : Array(V1beta1::NetworkPolicy)

    # Standard list metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V1beta1::NetworkPolicy), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V1beta1::NetworkPolicy), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
