# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  class Definitions::V1alpha1::CertificateSigningRequestList
    property items : Array(V1alpha1::CertificateSigningRequest)

    property metadata : Unversioned::ListMeta

    YAML.mapping({items:    {type: Array(V1alpha1::CertificateSigningRequest), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    JSON.mapping({items:    {type: Array(V1alpha1::CertificateSigningRequest), nilable: false, key: items, getter: false, setter: false},
                  metadata: {type: Unversioned::ListMeta, nilable: true, key: metadata, getter: false, setter: false}}, true)

    def initialize(@items : Array? = nil, @metadata : Unversioned::ListMeta = nil)
    end
  end
end
