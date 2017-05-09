# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_0
  # StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
  #
  # StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
  class Definitions::V1beta1::StorageClass
    # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
    property metadata : V1::ObjectMeta

    # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
    property parameters : Hash(String, String)?

    # Provisioner indicates the type of the provisioner.
    property provisioner : String

    YAML.mapping({metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  parameters:  {type: Hash(String, String), nilable: true, key: parameters, getter: false, setter: false},
                  provisioner: {type: String, nilable: false, key: provisioner, getter: false, setter: false}}, true)

    JSON.mapping({metadata:    {type: V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
                  parameters:  {type: Hash(String, String), nilable: true, key: parameters, getter: false, setter: false},
                  provisioner: {type: String, nilable: false, key: provisioner, getter: false, setter: false}}, true)

    def initialize(@metadata : V1::ObjectMeta = nil, @parameters : Hash(String, String)? = nil, @provisioner : String? = nil)
    end
  end
end
