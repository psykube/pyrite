# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # WindowsSecurityContextOptions contain Windows-specific options and credentials.
  class Api::Core::V1::WindowsSecurityContextOptions < Kubernetes::Spec
    # GMSACredentialSpec is where the GMSA admission webhook ([https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.)
    @[::JSON::Field(key: "gmsaCredentialSpec")]
    @[::YAML::Field(key: "gmsaCredentialSpec")]
    property gmsa_credential_spec : String | Nil

    # GMSACredentialSpecName is the name of the GMSA credential spec to use.
    @[::JSON::Field(key: "gmsaCredentialSpecName")]
    @[::YAML::Field(key: "gmsaCredentialSpecName")]
    property gmsa_credential_spec_name : String | Nil

    # HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true.
    @[::JSON::Field(key: "hostProcess")]
    @[::YAML::Field(key: "hostProcess")]
    property host_process : Bool | Nil

    # The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
    @[::JSON::Field(key: "runAsUserName")]
    @[::YAML::Field(key: "runAsUserName")]
    property run_as_user_name : String | Nil

    def initialize(*, @gmsa_credential_spec : String | Nil = nil, @gmsa_credential_spec_name : String | Nil = nil, @host_process : Bool | Nil = nil, @run_as_user_name : String | Nil = nil)
    end
  end
end
