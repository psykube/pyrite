# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
#
# StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
class Pyrite::V1_6_1::Kubernetes::Apis::Storage::V1beta1::StorageClass
  # Standard object's metadata. More info: [http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata](http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata)
  property metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  property parameters : Hash(String, String)?

  # Provisioner indicates the type of the provisioner.
  property provisioner : String

  YAML.mapping({
    api_version: {type: String, default: "StorageClass", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    parameters:  {type: Hash(String, String), nilable: true, key: parameters, getter: false, setter: false},
    provisioner: {type: String, nilable: false, key: provisioner, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "StorageClass", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1beta1", getter: false, setter: false},
    metadata:    {type: ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    parameters:  {type: Hash(String, String), nilable: true, key: parameters, getter: false, setter: false},
    provisioner: {type: String, nilable: false, key: provisioner, getter: false, setter: false},
  }, true)

  def initialize(@api_version : String? = nil, @kind : String? = nil, @metadata : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::ObjectMeta = nil, @parameters : Hash(String, String)? = nil, @provisioner : String? = nil)
    @api_version = "StorageClass"
    @kind = "v1beta1"
  end

  # create a StorageClass
  def create(context : String? = nil)
  end

  # list or watch objects of kind StorageClass
  def self.list(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # delete collection of StorageClass
  def self.delete(context : String? = nil, field_selector : String? = nil, label_selector : String? = nil, resource_version : String? = nil, timeout_seconds : Int32? = nil, watch : Bool? = nil)
  end

  # read the specified StorageClass
  def self.read(name : String, context : String? = nil, exact : Bool? = nil, export : Bool? = nil)
  end

  # replace the specified StorageClass
  def replace(context : String? = nil)
  end

  # partially update the specified StorageClass
  def patch(context : String? = nil)
  end

  # delete a StorageClass
  def delete(grace_period_seconds : Int32? = nil, orphan_dependents : Bool? = nil, preconditions : ::Pyrite::V1_6_1::Apimachinery::Apis::Meta::V1::Preconditions = nil, propagation_policy : String? = nil, context : String? = nil)
  end
end
