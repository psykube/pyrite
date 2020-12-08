# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member of resourceRules or nonResourceRules matches the request.
  class Api::Flowcontrol::V1alpha1::PolicyRulesWithSubjects
    # `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb and the target non-resource URL.
    property non_resource_rules : Array(Api::Flowcontrol::V1alpha1::NonResourcePolicyRule) | Nil

    # `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the target resource. At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
    property resource_rules : Array(Api::Flowcontrol::V1alpha1::ResourcePolicyRule) | Nil

    # subjects is the list of normal user, serviceaccount, or group that this rule cares about. There must be at least one member in this slice. A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request. Required.
    property subjects : Array(Api::Flowcontrol::V1alpha1::Subject)

    ::YAML.mapping({
      non_resource_rules: {type: Array(Api::Flowcontrol::V1alpha1::NonResourcePolicyRule), nilable: true, key: "nonResourceRules", getter: false, setter: false},
      resource_rules:     {type: Array(Api::Flowcontrol::V1alpha1::ResourcePolicyRule), nilable: true, key: "resourceRules", getter: false, setter: false},
      subjects:           {type: Array(Api::Flowcontrol::V1alpha1::Subject), nilable: false, key: "subjects", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      non_resource_rules: {type: Array(Api::Flowcontrol::V1alpha1::NonResourcePolicyRule), nilable: true, key: "nonResourceRules", getter: false, setter: false},
      resource_rules:     {type: Array(Api::Flowcontrol::V1alpha1::ResourcePolicyRule), nilable: true, key: "resourceRules", getter: false, setter: false},
      subjects:           {type: Array(Api::Flowcontrol::V1alpha1::Subject), nilable: false, key: "subjects", getter: false, setter: false},
    }, true)

    def initialize(*, @subjects : Array, @non_resource_rules : Array | Nil = nil, @resource_rules : Array | Nil = nil)
    end
  end
end
