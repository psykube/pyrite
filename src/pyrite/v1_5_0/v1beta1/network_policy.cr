# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  class Definitions::V1beta1::NetworkPolicy
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Specification of the desired behavior for this NetworkPolicy.
    property spec : V1beta1::NetworkPolicySpec

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::NetworkPolicySpec, nilable: true, key: spec, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  spec:     {type: V1beta1::NetworkPolicySpec, nilable: true, key: spec, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @spec : V1beta1::NetworkPolicySpec = nil)
    end
  end
end
