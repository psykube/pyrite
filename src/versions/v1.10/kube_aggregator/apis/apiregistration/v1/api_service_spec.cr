# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # APIServiceSpec contains information for locating and communicating with a server. Only https is supported, though you are able to disable certificate verification.
  class KubeAggregator::Apis::Apiregistration::V1::APIServiceSpec
    include ::JSON::Serializable
    include ::YAML::Serializable

    # CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate.
    @[::JSON::Field(key: "caBundle")]
    @[::YAML::Field(key: "caBundle")]
    property ca_bundle : String

    # Group is the API group name this server hosts
    @[::JSON::Field(key: "group")]
    @[::YAML::Field(key: "group")]
    property group : String | Nil

    # GroupPriorityMininum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones. Note that other versions of this group might specify even higher GroupPriorityMininum values such that the whole group gets a higher priority. The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes (OpenShift, Deis) are recommended to be in the 2000s
    @[::JSON::Field(key: "groupPriorityMinimum")]
    @[::YAML::Field(key: "groupPriorityMinimum")]
    property group_priority_minimum : Int32

    # InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server. This is strongly discouraged.  You should use the CABundle instead.
    @[::JSON::Field(key: "insecureSkipTLSVerify")]
    @[::YAML::Field(key: "insecureSkipTLSVerify")]
    property insecure_skip_tls_verify : Bool | Nil

    # Service is a reference to the service for this API server.  It must communicate on port 443 If the Service is nil, that means the handling for the API groupversion is handled locally on this server. The call will simply delegate to the normal handler chain to be fulfilled.
    @[::JSON::Field(key: "service")]
    @[::YAML::Field(key: "service")]
    property service : KubeAggregator::Apis::Apiregistration::V1::ServiceReference

    # Version is the API version this server hosts.  For example, "v1"
    @[::JSON::Field(key: "version")]
    @[::YAML::Field(key: "version")]
    property version : String | Nil

    # VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero. The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10). The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo) Since it's inside of a group, the number can be small, probably in the 10s.
    @[::JSON::Field(key: "versionPriority")]
    @[::YAML::Field(key: "versionPriority")]
    property version_priority : Int32

    def initialize(*, @ca_bundle : String, @group : String | Nil = nil, @group_priority_minimum : Int32, @insecure_skip_tls_verify : Bool | Nil = nil, @service : KubeAggregator::Apis::Apiregistration::V1::ServiceReference, @version : String | Nil = nil, @version_priority : Int32)
    end
  end
end
