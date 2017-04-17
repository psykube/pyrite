# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# SELinux  Strategy Options defines the strategy type and any options used to create the strategy.
class K8S::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::SELinuxStrategyOptions
  # type is the strategy that will dictate the allowable labels that may be set.
  property rule : String

  # seLinuxOptions required to run as; required for MustRunAs More info: http://releases.k8s.io/HEAD/docs/design/security_context.md#security-context
  property se_linux_options : ::K8S::V1_6_0::Kubernetes::Api::V1::SELinuxOptions

  YAML.mapping({rule:             {type: String, nilable: false, key: rule, getter: false, setter: false},
                se_linux_options: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::SELinuxOptions, nilable: true, key: seLinuxOptions, getter: false, setter: false}}, true)

  JSON.mapping({rule:             {type: String, nilable: false, key: rule, getter: false, setter: false},
                se_linux_options: {type: ::K8S::V1_6_0::Kubernetes::Api::V1::SELinuxOptions, nilable: true, key: seLinuxOptions, getter: false, setter: false}}, true)

  def initialize(@rule, @se_linux_options = nil)
  end
end
