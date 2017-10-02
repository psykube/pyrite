# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # NodeSystemInfo is a set of [ids/uuids to uniquely identify the node.](ids/uuids to uniquely identify the node.)
  class Kubernetes::Api::V1::NodeSystemInfo
    # The Architecture reported by the node
    property architecture : String

    # Boot ID reported by the node.
    property boot_id : String

    # ContainerRuntime Version reported by the node through runtime remote API (e.g. docker://1.5.0).
    property container_runtime_version : String

    # Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
    property kernel_version : String

    # KubeProxy Version reported by the node.
    property kube_proxy_version : String

    # Kubelet Version reported by the node.
    property kubelet_version : String

    # MachineID reported by the node. For unique machine identification in the cluster this field is prefered. Learn more from man(5) machine-id: [http://man7.org/linux/man-pages/man5/machine-id.5.html](http://man7.org/linux/man-pages/man5/machine-id.5.html)
    property machine_id : String

    # The Operating System reported by the node
    property operating_system : String

    # OS Image reported by the node from [/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).](/etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).)
    property os_image : String

    # SystemUUID reported by the node. For unique machine identification MachineID is prefered. This field is specific to Red Hat hosts [https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html](https://access.redhat.com/documentation/en-US/Red_Hat_Subscription_Management/1/html/RHSM/getting-system-uuid.html)
    property system_uui_d : String

    YAML.mapping({
      architecture:              {type: String, nilable: false, key: "architecture", getter: false, setter: false},
      boot_id:                   {type: String, nilable: false, key: "bootID", getter: false, setter: false},
      container_runtime_version: {type: String, nilable: false, key: "containerRuntimeVersion", getter: false, setter: false},
      kernel_version:            {type: String, nilable: false, key: "kernelVersion", getter: false, setter: false},
      kube_proxy_version:        {type: String, nilable: false, key: "kubeProxyVersion", getter: false, setter: false},
      kubelet_version:           {type: String, nilable: false, key: "kubeletVersion", getter: false, setter: false},
      machine_id:                {type: String, nilable: false, key: "machineID", getter: false, setter: false},
      operating_system:          {type: String, nilable: false, key: "operatingSystem", getter: false, setter: false},
      os_image:                  {type: String, nilable: false, key: "osImage", getter: false, setter: false},
      system_uui_d:              {type: String, nilable: false, key: "systemUUID", getter: false, setter: false},
    }, true)

    JSON.mapping({
      architecture:              {type: String, nilable: false, key: "architecture", getter: false, setter: false},
      boot_id:                   {type: String, nilable: false, key: "bootID", getter: false, setter: false},
      container_runtime_version: {type: String, nilable: false, key: "containerRuntimeVersion", getter: false, setter: false},
      kernel_version:            {type: String, nilable: false, key: "kernelVersion", getter: false, setter: false},
      kube_proxy_version:        {type: String, nilable: false, key: "kubeProxyVersion", getter: false, setter: false},
      kubelet_version:           {type: String, nilable: false, key: "kubeletVersion", getter: false, setter: false},
      machine_id:                {type: String, nilable: false, key: "machineID", getter: false, setter: false},
      operating_system:          {type: String, nilable: false, key: "operatingSystem", getter: false, setter: false},
      os_image:                  {type: String, nilable: false, key: "osImage", getter: false, setter: false},
      system_uui_d:              {type: String, nilable: false, key: "systemUUID", getter: false, setter: false},
    }, true)

    def initialize(*, @architecture : String | Nil = nil, @boot_id : String | Nil = nil, @container_runtime_version : String | Nil = nil, @kernel_version : String | Nil = nil, @kube_proxy_version : String | Nil = nil, @kubelet_version : String | Nil = nil, @machine_id : String | Nil = nil, @operating_system : String | Nil = nil, @os_image : String | Nil = nil, @system_uui_d : String | Nil = nil)
    end
  end
end
