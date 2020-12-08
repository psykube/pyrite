# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # GroupSubject holds detailed information for group-kind subject.
  class Api::Flowcontrol::V1alpha1::GroupSubject
    # name is the user group that matches, or "*" to match all user groups. See [https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.](https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.)
    property name : String

    ::YAML.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name: {type: String, nilable: false, key: "name", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String)
    end
  end
end
