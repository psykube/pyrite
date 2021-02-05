# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeSystemInfo is a set of [ids/uuids to uniquely identify the node.](ids/uuids to uniquely identify the node.)
  class Api::Core::V1::NodeSystemInfo
    include ::JSON::Serializable
    include ::YAML::Serializable

    # The Architecture reported by the node
    @[JSON::Field(key: "architecture")]
    @[YAML::Field(key: "architecture")]
    property architecture : String

    # Boot ID reported by the node.
    @[JSON::Field(key: "bootID")]
    @[YAML::Field(key: "bootID")]
    property boot_id : String

    # ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).
    @[JSON::Field(key: "containerRuntimeVersion")]
    @[YAML::Field(key: "containerRuntimeVersion")]
    property container_runtime_version : String

    # Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
    @[JSON::Field(key: "kernelVersion")]
    @[YAML::Field(key: "kernelVersion")]
    property kernel_version : String

    # KubeProxy Version reported by the node.
    @[JSON::Field(key: "kubeProxyVersion")]
    @[YAML::Field(key: "kubeProxyVersion")]
    property kube_proxy_version : String

    # Kubelet Version reported by the node.
    @[JSON::Field(key: "kubeletVersion")]
    @[YAML::Field(key: "kubeletVersion")]
    property kubelet_version : String

    # MachineID reported by the node. For unique machine identification in the cluster this field is preferred. Learn more from man(5) machine-id: [http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html)
    @[JSON::Field(key: "machineID")]
    @[YAML::Field(key: "machineID")]
    property machine_id : String

    # The Operating System reported by the node
    @[JSON::Field(key: "operatingSystem")]
    @[YAML::Field(key: "operatingSystem")]
    property operating_system : String

    # OS Image reported by the node from [/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).)
    @[JSON::Field(key: "osImage")]
    @[YAML::Field(key: "osImage")]
    property os_image : String

    # SystemUUID reported by the node. For unique machine identification MachineID is preferred. This field is specific to Red Hat hosts [https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html](https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html)
    @[JSON::Field(key: "systemUUID")]
    @[YAML::Field(key: "systemUUID")]
    property system_uuid : String

    def initialize(*, @architecture : String, @boot_id : String, @container_runtime_version : String, @kernel_version : String, @kube_proxy_version : String, @kubelet_version : String, @machine_id : String, @operating_system : String, @os_image : String, @system_uuid : String)
    end
  end
end
