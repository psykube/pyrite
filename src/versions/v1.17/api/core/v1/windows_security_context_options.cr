# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # WindowsSecurityContextOptions contain Windows-specific options and credentials.
  class Api::Core::V1::WindowsSecurityContextOptions
    include ::JSON::Serializable
    include ::YAML::Serializable

    # GMSACredentialSpec is where the GMSA admission webhook ([https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.](https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.)
    @[::JSON::Field(key: "gmsaCredentialSpec")]
    @[::YAML::Field(key: "gmsaCredentialSpec")]
    property gmsa_credential_spec : String | Nil

    # GMSACredentialSpecName is the name of the GMSA credential spec to use. This field is alpha-level and is only honored by servers that enable the WindowsGMSA feature flag.
    @[::JSON::Field(key: "gmsaCredentialSpecName")]
    @[::YAML::Field(key: "gmsaCredentialSpecName")]
    property gmsa_credential_spec_name : String | Nil

    # The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. This field is beta-level and may be disabled with the WindowsRunAsUserName feature flag.
    @[::JSON::Field(key: "runAsUserName")]
    @[::YAML::Field(key: "runAsUserName")]
    property run_as_user_name : String | Nil

    def initialize(*, @gmsa_credential_spec : String | Nil = nil, @gmsa_credential_spec_name : String | Nil = nil, @run_as_user_name : String | Nil = nil)
    end
  end
end
