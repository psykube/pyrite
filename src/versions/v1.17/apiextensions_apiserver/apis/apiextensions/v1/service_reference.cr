# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # ServiceReference holds a reference to Service.legacy.k8s.io
  class ApiextensionsApiserver::Apis::Apiextensions::V1::ServiceReference
    # name is the name of the service. Required
    property name : String

    # namespace is the namespace of the service. Required
    property namespace : String

    # path is an optional URL path at which the webhook will be contacted.
    property path : String | Nil

    # port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
    property port : Int32 | Nil

    ::YAML.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
      path:      {type: String, nilable: true, key: "path", getter: false, setter: false},
      port:      {type: Int32, nilable: true, key: "port", getter: false, setter: false},
    }, true)

    ::JSON.mapping({
      name:      {type: String, nilable: false, key: "name", getter: false, setter: false},
      namespace: {type: String, nilable: false, key: "namespace", getter: false, setter: false},
      path:      {type: String, nilable: true, key: "path", getter: false, setter: false},
      port:      {type: Int32, nilable: true, key: "port", getter: false, setter: false},
    }, true)

    def initialize(*, @name : String, @namespace : String, @path : String | Nil = nil, @port : Int32 | Nil = nil)
    end
  end
end
