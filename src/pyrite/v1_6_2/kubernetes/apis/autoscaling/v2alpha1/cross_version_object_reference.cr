# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # CrossVersionObjectReference contains enough information to let you identify the referred resource.
  class Definitions::Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference
    # Name of the referent; More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String

    YAML.mapping({
      api_version: {type: String, default: "CrossVersionObjectReference", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
      name:        {type: String, nilable: false, key: name, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "CrossVersionObjectReference", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v2alpha1", getter: false, setter: false},
      name:        {type: String, nilable: false, key: name, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @name : String? = nil)
      @api_version = "autoscaling/v2alpha1"
      @kind = "CrossVersionObjectReference"
    end
  end

  module Resources::Autoscaling::V2alpha1
    include Resource
    alias CrossVersionObjectReference = Definitions::Kubernetes::Apis::Autoscaling::V2alpha1::CrossVersionObjectReference
  end
end
