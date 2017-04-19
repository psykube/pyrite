# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# Spec to control the desired behavior of daemon set rolling update.
class Pyrite::V1_6_0::Kubernetes::Apis::Extensions::V1beta1::RollingUpdateDaemonSet
  # The maximum number of DaemonSet pods that can be unavailable during the update. Value can be an absolute number (ex: 5) or a percentage of total number of DaemonSet pods at the start of the update (ex: 10%). Absolute number is calculated from percentage by rounding up. This cannot be 0. Default value is 1. Example: when this is set to 30%, at most 30% of the total number of nodes that should be running the daemon pod (i.e. status.desiredNumberScheduled) can have their pods stopped for an update at any given time. The update starts by stopping at most 30% of those DaemonSet pods and then brings up new DaemonSet pods in their place. Once the new pods are available, it then proceeds onto other DaemonSet pods, thus ensuring that at least 70% of original number of DaemonSet pods are available at all times during the update.
  property max_unavailable : ::Pyrite::V1_6_0::Apimachinery::Util::Intstr::IntOrString

  YAML.mapping({max_unavailable: {type: ::Pyrite::V1_6_0::Apimachinery::Util::Intstr::IntOrString, nilable: true, key: maxUnavailable, getter: false, setter: false}}, true)

  JSON.mapping({max_unavailable: {type: ::Pyrite::V1_6_0::Apimachinery::Util::Intstr::IntOrString, nilable: true, key: maxUnavailable, getter: false, setter: false}}, true)

  def initialize(@max_unavailable : ::Pyrite::V1_6_0::Apimachinery::Util::Intstr::IntOrString = nil)
  end
end
