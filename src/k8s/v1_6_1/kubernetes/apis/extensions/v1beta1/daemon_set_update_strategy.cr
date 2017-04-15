require "yaml"
require "json"

class K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::DaemonSetUpdateStrategy
  # Rolling update config params.Present only if type = "RollingUpdate".
  property rolling_update : ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDaemonSet

  # Type of daemon set update.Can be "RollingUpdate" or "OnDelete".Default is OnDelete.
  property type : String?

  YAML.mapping({rolling_update: {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDaemonSet, nilable: true, key: rollingUpdate, getter: false, setter: false},
                type:           {type: String, nilable: true, key: type, getter: false, setter: false}}, true)

  JSON.mapping({rolling_update: {type: ::K8S::V1_6_1::Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDaemonSet, nilable: true, key: rollingUpdate, getter: false, setter: false},
                type:           {type: String, nilable: true, key: type, getter: false, setter: false}}, true)

  def initialize(@rolling_update = nil, @type = nil)
  end
end
