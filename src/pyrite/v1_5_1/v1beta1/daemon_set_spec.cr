# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_1
  # DaemonSetSpec is the specification of a daemon set.
  class Definitions::V1beta1::DaemonSetSpec
    # Selector is a label query over pods that are managed by the daemon set. Must match in order to be controlled. If empty, defaulted to labels on Pod template. More info: [http://kubernetes.io/docs/user-guide/labels#label-selectors](http://kubernetes.io/docs/user-guide/labels#label-selectors)
    property selector : Unversioned::LabelSelector

    # Template is the object that describes the pod that will be created. The DaemonSet will create exactly one copy of this pod on every node that matches the template's node selector (or on every node if no node selector is specified). More info: [http://kubernetes.io/docs/user-guide/replication-controller#pod-template](http://kubernetes.io/docs/user-guide/replication-controller#pod-template)
    property template : V1::PodTemplateSpec

    YAML.mapping({selector: {type: Unversioned::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                  template: {type: V1::PodTemplateSpec, nilable: false, key: template, getter: false, setter: false}}, true)

    JSON.mapping({selector: {type: Unversioned::LabelSelector, nilable: true, key: selector, getter: false, setter: false},
                  template: {type: V1::PodTemplateSpec, nilable: false, key: template, getter: false, setter: false}}, true)

    def initialize(@selector : Unversioned::LabelSelector = nil, @template : V1::PodTemplateSpec = nil)
    end
  end
end
