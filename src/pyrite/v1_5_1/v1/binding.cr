# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # Binding ties one object to another. For example, a pod is bound to a node by a scheduler.
  class Definitions::V1::Binding
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # The target object that you want to bind to the standard object.
    property target : V1::ObjectReference

    YAML.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  target:   {type: V1::ObjectReference, nilable: false, key: target, getter: false, setter: false}}, true)

    JSON.mapping({metadata: {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  target:   {type: V1::ObjectReference, nilable: false, key: target, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @target : V1::ObjectReference = nil)
    end
  end
end
