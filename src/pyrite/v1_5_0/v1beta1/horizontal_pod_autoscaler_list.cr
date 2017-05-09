# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # list of horizontal pod autoscaler objects.
  class Definitions::V1beta1::HorizontalPodAutoscalerList
    # list of horizontal pod autoscaler objects.
    property items : Array(V1beta1::HorizontalPodAutoscaler)

    # Standard list metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V1beta1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V1beta1::HorizontalPodAutoscaler), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
