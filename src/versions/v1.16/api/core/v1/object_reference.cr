# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ObjectReference contains enough information to let you inspect or modify the referred object.
  class Api::Core::V1::ObjectReference
    # API version of the referent.
    property api_version : String | Nil

    # If referring to a piece of an object instead of an entire object, this string should contain a valid [JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.](JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.)
    property field_path : String | Nil

    # Kind of the referent. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds)
    property kind : String | Nil

    # Name of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names)
    property name : String | Nil

    # Namespace of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)
    property namespace : String | Nil

    # Specific resourceVersion to which this reference is made, if any. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency)
    property resource_version : String | Nil

    # UID of the referent. More info: [https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids](https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids)
    property uid : String | Nil

    ::YAML.mapping({
      api_version:      {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      field_path:       {type: String, nilable: true, key: "fieldPath", getter: false, setter: false},
      kind:             {type: String, nilable: true, key: "kind", getter: false, setter: false},
      name:             {type: String, nilable: true, key: "name", getter: false, setter: false},
      namespace:        {type: String, nilable: true, key: "namespace", getter: false, setter: false},
      resource_version: {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
      uid:              {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      api_version:      {type: String, nilable: true, key: "apiVersion", getter: false, setter: false},
      field_path:       {type: String, nilable: true, key: "fieldPath", getter: false, setter: false},
      kind:             {type: String, nilable: true, key: "kind", getter: false, setter: false},
      name:             {type: String, nilable: true, key: "name", getter: false, setter: false},
      namespace:        {type: String, nilable: true, key: "namespace", getter: false, setter: false},
      resource_version: {type: String, nilable: true, key: "resourceVersion", getter: false, setter: false},
      uid:              {type: String, nilable: true, key: "uid", getter: false, setter: false},
    }, true)

    def initialize(*, @api_version : String | Nil = nil, @field_path : String | Nil = nil, @kind : String | Nil = nil, @name : String | Nil = nil, @namespace : String | Nil = nil, @resource_version : String | Nil = nil, @uid : String | Nil = nil)
    end
  end
end
