# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectReference contains enough information to let you inspect or modify the referred object.
  class Kubernetes::Api::V1::ObjectReference
    include ::JSON::Serializable
    include ::YAML::Serializable

    # API version of the referent.
    @[JSON::Field(key: "apiVersion")]
    @[YAML::Field(key: "apiVersion")]
    property api_version : String | Nil

    # If referring to a piece of an object instead of an entire object, this string should contain a valid [JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.](JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.)
    @[JSON::Field(key: "fieldPath")]
    @[YAML::Field(key: "fieldPath")]
    property field_path : String | Nil

    # Kind of the referent. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#types-kinds)
    @[JSON::Field(key: "kind")]
    @[YAML::Field(key: "kind")]
    property kind : String | Nil

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    @[JSON::Field(key: "name")]
    @[YAML::Field(key: "name")]
    property name : String | Nil

    # Namespace of the referent. More info: [http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces)
    @[JSON::Field(key: "namespace")]
    @[YAML::Field(key: "namespace")]
    property namespace : String | Nil

    # Specific resourceVersion to which this reference is made, if any. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency)
    @[JSON::Field(key: "resourceVersion")]
    @[YAML::Field(key: "resourceVersion")]
    property resource_version : String | Nil

    # UID of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)
    @[JSON::Field(key: "uid")]
    @[YAML::Field(key: "uid")]
    property uid : String | Nil

    def initialize(*, @api_version : String | Nil = nil, @field_path : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @namespace : String | Nil = nil, @resource_version : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
