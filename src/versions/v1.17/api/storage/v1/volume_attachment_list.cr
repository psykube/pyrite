# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # VolumeAttachmentList is a collection of VolumeAttachment objects.
  class Api::Storage::V1::VolumeAttachmentList < Kubernetes::List(Api::Storage::V1::VolumeAttachment)
  end
end
