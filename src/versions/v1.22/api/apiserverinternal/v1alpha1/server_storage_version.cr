# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # An API server instance reports the version it can decode and the version it encodes objects to when persisting objects in the backend.
  class Api::Apiserverinternal::V1alpha1::ServerStorageVersion < Kubernetes::Spec
    # The ID of the reporting API server.
    @[::JSON::Field(key: "apiServerID")]
    @[::YAML::Field(key: "apiServerID")]
    property api_server_id : String | Nil

    # The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
    @[::JSON::Field(key: "decodableVersions")]
    @[::YAML::Field(key: "decodableVersions")]
    property decodable_versions : Array(String) | Nil

    # The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
    @[::JSON::Field(key: "encodingVersion")]
    @[::YAML::Field(key: "encodingVersion")]
    property encoding_version : String | Nil

    def initialize(*, @api_server_id : String | Nil = nil, @decodable_versions : Array | Nil = nil, @encoding_version : String | Nil = nil)
    end
  end
end
