# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # ServiceAccount binds together: * a name, understood by users, and perhaps by peripheral systems, for an identity * a principal that can be authenticated and authorized * a set of secrets
  class Definitions::V1::ServiceAccount
    # ImagePullSecrets is a list of references to secrets in the same namespace to use for pulling any images in pods that reference this ServiceAccount. ImagePullSecrets are distinct from Secrets because Secrets can be mounted in the pod, but ImagePullSecrets are only accessed by the kubelet. More info: [http://kubernetes.io/docs/user-guide/secrets#manually-specifying-an-imagepullsecret](http://kubernetes.io/docs/user-guide/secrets#manually-specifying-an-imagepullsecret)
    property image_pull_secrets : Array(V1::LocalObjectReference)?

    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Secrets is the list of secrets allowed to be used by pods running using this ServiceAccount. More info: [http://kubernetes.io/docs/user-guide/secrets](http://kubernetes.io/docs/user-guide/secrets)
    property secrets : Array(V1::ObjectReference)?

    YAML.mapping({image_pull_secrets: {type: Array(V1::LocalObjectReference), nilable: true, key: imagePullSecrets, getter: false, setter: false},
                  metadata:           {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  secrets:            {type: Array(V1::ObjectReference), nilable: true, key: secrets, getter: false, setter: false}}, true)

    JSON.mapping({image_pull_secrets: {type: Array(V1::LocalObjectReference), nilable: true, key: imagePullSecrets, getter: false, setter: false},
                  metadata:           {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  secrets:            {type: Array(V1::ObjectReference), nilable: true, key: secrets, getter: false, setter: false}}, true)

    def initialize(@image_pull_secrets : Array? = nil, @metadata : V1::ObjectMeta = nil, @secrets : Array? = nil)
    end
  end
end
