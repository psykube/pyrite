# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # DeploymentList is a list of Deployments.
  class Definitions::V1beta1::DeploymentList
    # Items is the list of Deployments.
    property items : Array(V1beta1::Deployment)

    # Standard list metadata.
    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V1beta1::Deployment), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V1beta1::Deployment), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
