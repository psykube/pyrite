# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_6_2
  # ObjectReference contains enough information to let you inspect or modify the referred object.
  class Definitions::Kubernetes::Api::V1::ObjectReference
    # If referring to a piece of an object instead of an entire object, this string should contain a valid [JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.](JSON/Go field access statement, such as desiredState.manifest.containers[2]. For example, if the object reference is to a container within a pod, this would take on a value like: "spec.containers{name}" (where "name" refers to the name of the container that triggered the event) or if no container name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax is chosen only to have some well-defined way of referencing a part of an object.)
    property field_path : String?

    # Name of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#names](http://kubernetes.io/docs/user-guide/identifiers#names)
    property name : String?

    # Namespace of the referent. More info: [http://kubernetes.io/docs/user-guide/namespaces](http://kubernetes.io/docs/user-guide/namespaces)
    property namespace : String?

    # Specific resourceVersion to which this reference is made, if any. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#concurrency-control-and-consistency)
    property resource_version : String?

    # UID of the referent. More info: [http://kubernetes.io/docs/user-guide/identifiers#uids](http://kubernetes.io/docs/user-guide/identifiers#uids)
    property uid : String?

    YAML.mapping({
      api_version:      {type: String, default: "ObjectReference", key: apiVersion, getter: false, setter: false},
      kind:             {type: String, default: "v1", getter: false, setter: false},
      field_path:       {type: String, nilable: true, key: fieldPath, getter: false, setter: false},
      name:             {type: String, nilable: true, key: name, getter: false, setter: false},
      namespace:        {type: String, nilable: true, key: namespace, getter: false, setter: false},
      resource_version: {type: String, nilable: true, key: resourceVersion, getter: false, setter: false},
      uid:              {type: String, nilable: true, key: uid, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version:      {type: String, default: "ObjectReference", key: apiVersion, getter: false, setter: false},
      kind:             {type: String, default: "v1", getter: false, setter: false},
      field_path:       {type: String, nilable: true, key: fieldPath, getter: false, setter: false},
      name:             {type: String, nilable: true, key: name, getter: false, setter: false},
      namespace:        {type: String, nilable: true, key: namespace, getter: false, setter: false},
      resource_version: {type: String, nilable: true, key: resourceVersion, getter: false, setter: false},
      uid:              {type: String, nilable: true, key: uid, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @field_path : String? = nil, @kind : String? = nil, @name : String? = nil, @namespace : String? = nil, @resource_version : String? = nil, @uid : String? = nil)
      @api_version = "v1"
      @kind = "ObjectReference"
    end
  end

  module Resources::V1
    include Resource
    alias ObjectReference = Definitions::Kubernetes::Api::V1::ObjectReference
  end
end
