# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_3
  # ReplicationController represents the configuration of a replication controller.
  class Definitions::V1::ReplicationController
    # If the Labels of a ReplicationController are empty, they are defaulted to be the same as the Pod(s) that the replication controller manages. Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Spec defines the specification of the desired behavior of the replication controller. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property spec : V1::ReplicationControllerSpec

    # Status is the most recently observed status of the replication controller. This data may be out of date by some window of time. Populated by the system. Read-only. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#spec-and-status)
    property status : V1::ReplicationControllerStatus

    YAML.mapping({
      api_version: {type: String, default: "ReplicationController", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1::ReplicationControllerSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1::ReplicationControllerStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    JSON.mapping({
      api_version: {type: String, default: "ReplicationController", key: apiVersion, getter: false, setter: false},
      kind:        {type: String, default: "v1", getter: false, setter: false},
      metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
      spec:        {type: V1::ReplicationControllerSpec, nilable: true, key: spec, getter: false, setter: false},
      status:      {type: V1::ReplicationControllerStatus, nilable: true, key: status, getter: false, setter: false},
    }, true)

    def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : V1::ObjectMeta = nil, @spec : V1::ReplicationControllerSpec = nil, @status : V1::ReplicationControllerStatus = nil)
      @api_version = "v1"
      @kind = "ReplicationController"
    end
  end

  module Resources::V1
    include Resource
    alias ReplicationController = Definitions::V1::ReplicationController
  end
end
