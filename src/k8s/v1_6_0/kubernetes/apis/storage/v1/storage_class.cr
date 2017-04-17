# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# StorageClass describes the parameters for a class of storage for which PersistentVolumes can be dynamically provisioned.
#
# StorageClasses are non-namespaced; the name of the storage class according to etcd is in ObjectMeta.Name.
class K8S::V1_6_0::Kubernetes::Apis::Storage::V1::StorageClass
  # Standard object's metadata.More info: http://releases.k8s.io/HEAD/docs/devel/api-conventions.md#metadata
  property metadata : ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta

  # Parameters holds the parameters for the provisioner that should create volumes of this storage class.
  property parameters : Hash(String, String)?

  # Provisioner indicates the type of the provisioner.
  property provisioner : String

  YAML.mapping({
    api_version: {type: String, default: "StorageClass", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    parameters:  {type: Hash(String, String), nilable: true, key: parameters, getter: false, setter: false},
    provisioner: {type: String, nilable: false, key: provisioner, getter: false, setter: false},
  }, true)

  JSON.mapping({
    api_version: {type: String, default: "StorageClass", key: apiVersion, getter: false, setter: false},
    kind:        {type: String, default: "v1", getter: false, setter: false},
    metadata:    {type: ::K8S::V1_6_0::Apimachinery::Apis::Meta::V1::ObjectMeta, nilable: true, key: metadata, getter: false, setter: false},
    parameters:  {type: Hash(String, String), nilable: true, key: parameters, getter: false, setter: false},
    provisioner: {type: String, nilable: false, key: provisioner, getter: false, setter: false},
  }, true)

  def initialize(@provisioner, @metadata = nil, @parameters = nil)
    @api_version = "StorageClass"
    @kind = "v1"
  end

  # list or watch objects of kind StorageClass
  def self.get(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # create a StorageClass
  def self.create(provisioner, pretty : String?, metadata = nil, parameters = nil)
  end

  # delete collection of StorageClass
  def self.delete(pretty : String?, field_selector : String?, label_selector : String?, resource_version : String?, timeout_seconds : Int32?, watch : Bool?)
  end

  # read the specified StorageClass
  def self.get(pretty : String?, exact : Bool?, export : Bool?, name : String)
  end

  # replace the specified StorageClass
  def replace(provisioner, pretty : String?, metadata = nil, parameters = nil)
  end

  # delete a StorageClass
  def delete(pretty : String?, grace_period_seconds : Int32?, orphan_dependents : Bool?, propagation_policy : String?, preconditions = nil)
  end
end
