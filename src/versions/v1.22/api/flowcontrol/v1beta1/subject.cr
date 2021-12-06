# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
  class Api::Flowcontrol::V1beta1::Subject < Kubernetes::Spec
    # `group` matches based on user group name.
    @[::JSON::Field(key: "group")]
    @[::YAML::Field(key: "group")]
    property group : Api::Flowcontrol::V1beta1::GroupSubject | Nil

    # `kind` indicates which one of the other fields is non-empty. Required
    @[::JSON::Field(key: "kind")]
    @[::YAML::Field(key: "kind")]
    property kind : String

    # `serviceAccount` matches ServiceAccounts.
    @[::JSON::Field(key: "serviceAccount")]
    @[::YAML::Field(key: "serviceAccount")]
    property service_account : Api::Flowcontrol::V1beta1::ServiceAccountSubject | Nil

    # `user` matches based on username.
    @[::JSON::Field(key: "user")]
    @[::YAML::Field(key: "user")]
    property user : Api::Flowcontrol::V1beta1::UserSubject | Nil

    def initialize(*, @group : Api::Flowcontrol::V1beta1::GroupSubject | Nil = nil, @kind : String, @service_account : Api::Flowcontrol::V1beta1::ServiceAccountSubject | Nil = nil, @user : Api::Flowcontrol::V1beta1::UserSubject | Nil = nil)
    end
  end
end