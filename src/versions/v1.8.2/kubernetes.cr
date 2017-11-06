module Pyrite::Kubernetes
  VERSION = "1.8.2"
  alias Resource = Resources::Io::K8s::Api::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration |
                   Resources::Io::K8s::Api::Admissionregistration::V1alpha1::InitializerConfiguration |
                   Resources::Io::K8s::Api::Apps::V1beta1::ControllerRevision |
                   Resources::Io::K8s::Api::Apps::V1beta1::Deployment |
                   Resources::Io::K8s::Api::Apps::V1beta1::Scale |
                   Resources::Io::K8s::Api::Apps::V1beta1::StatefulSet |
                   Resources::Io::K8s::Api::Apps::V1beta2::ControllerRevision |
                   Resources::Io::K8s::Api::Apps::V1beta2::DaemonSet |
                   Resources::Io::K8s::Api::Apps::V1beta2::Deployment |
                   Resources::Io::K8s::Api::Apps::V1beta2::ReplicaSet |
                   Resources::Io::K8s::Api::Apps::V1beta2::Scale |
                   Resources::Io::K8s::Api::Apps::V1beta2::StatefulSet |
                   Resources::Io::K8s::Api::Authentication::V1::TokenReview |
                   Resources::Io::K8s::Api::Authentication::V1beta1::TokenReview |
                   Resources::Io::K8s::Api::Authorization::V1::LocalSubjectAccessReview |
                   Resources::Io::K8s::Api::Authorization::V1::SelfSubjectAccessReview |
                   Resources::Io::K8s::Api::Authorization::V1::SelfSubjectRulesReview |
                   Resources::Io::K8s::Api::Authorization::V1::SubjectAccessReview |
                   Resources::Io::K8s::Api::Authorization::V1beta1::LocalSubjectAccessReview |
                   Resources::Io::K8s::Api::Authorization::V1beta1::SelfSubjectAccessReview |
                   Resources::Io::K8s::Api::Authorization::V1beta1::SelfSubjectRulesReview |
                   Resources::Io::K8s::Api::Authorization::V1beta1::SubjectAccessReview |
                   Resources::Io::K8s::Api::Autoscaling::V1::HorizontalPodAutoscaler |
                   Resources::Io::K8s::Api::Autoscaling::V1::Scale |
                   Resources::Io::K8s::Api::Autoscaling::V2beta1::HorizontalPodAutoscaler |
                   Resources::Io::K8s::Api::Batch::V1::Job |
                   Resources::Io::K8s::Api::Batch::V1beta1::CronJob |
                   Resources::Io::K8s::Api::Batch::V2alpha1::CronJob |
                   Resources::Io::K8s::Api::Certificates::V1beta1::CertificateSigningRequest |
                   Resources::Io::K8s::Api::Core::V1::Binding |
                   Resources::Io::K8s::Api::Core::V1::ComponentStatus |
                   Resources::Io::K8s::Api::Core::V1::ConfigMap |
                   Resources::Io::K8s::Api::Core::V1::Endpoints |
                   Resources::Io::K8s::Api::Core::V1::Event |
                   Resources::Io::K8s::Api::Core::V1::LimitRange |
                   Resources::Io::K8s::Api::Core::V1::Namespace |
                   Resources::Io::K8s::Api::Core::V1::Node |
                   Resources::Io::K8s::Api::Core::V1::PersistentVolume |
                   Resources::Io::K8s::Api::Core::V1::PersistentVolumeClaim |
                   Resources::Io::K8s::Api::Core::V1::Pod |
                   Resources::Io::K8s::Api::Core::V1::PodTemplate |
                   Resources::Io::K8s::Api::Core::V1::ReplicationController |
                   Resources::Io::K8s::Api::Core::V1::ResourceQuota |
                   Resources::Io::K8s::Api::Core::V1::Secret |
                   Resources::Io::K8s::Api::Core::V1::Service |
                   Resources::Io::K8s::Api::Core::V1::ServiceAccount |
                   Resources::Io::K8s::Api::Extensions::V1beta1::DaemonSet |
                   Resources::Io::K8s::Api::Extensions::V1beta1::Deployment |
                   Resources::Io::K8s::Api::Extensions::V1beta1::Ingress |
                   Resources::Io::K8s::Api::Extensions::V1beta1::NetworkPolicy |
                   Resources::Io::K8s::Api::Extensions::V1beta1::PodSecurityPolicy |
                   Resources::Io::K8s::Api::Extensions::V1beta1::ReplicaSet |
                   Resources::Io::K8s::Api::Extensions::V1beta1::Scale |
                   Resources::Io::K8s::Api::Networking::V1::NetworkPolicy |
                   Resources::Io::K8s::Api::Policy::V1beta1::Eviction |
                   Resources::Io::K8s::Api::Policy::V1beta1::PodDisruptionBudget |
                   Resources::Io::K8s::Api::Rbac::V1::ClusterRole |
                   Resources::Io::K8s::Api::Rbac::V1::ClusterRoleBinding |
                   Resources::Io::K8s::Api::Rbac::V1::Role |
                   Resources::Io::K8s::Api::Rbac::V1::RoleBinding |
                   Resources::Io::K8s::Api::Rbac::V1alpha1::ClusterRole |
                   Resources::Io::K8s::Api::Rbac::V1alpha1::ClusterRoleBinding |
                   Resources::Io::K8s::Api::Rbac::V1alpha1::Role |
                   Resources::Io::K8s::Api::Rbac::V1alpha1::RoleBinding |
                   Resources::Io::K8s::Api::Rbac::V1beta1::ClusterRole |
                   Resources::Io::K8s::Api::Rbac::V1beta1::ClusterRoleBinding |
                   Resources::Io::K8s::Api::Rbac::V1beta1::Role |
                   Resources::Io::K8s::Api::Rbac::V1beta1::RoleBinding |
                   Resources::Io::K8s::Api::Scheduling::V1alpha1::PriorityClass |
                   Resources::Io::K8s::Api::Settings::V1alpha1::PodPreset |
                   Resources::Io::K8s::Api::Storage::V1::StorageClass |
                   Resources::Io::K8s::Api::Storage::V1beta1::StorageClass |
                   Resources::Apiextensions::V1beta1::CustomResourceDefinition |
                   Resources::Apiregistration::V1beta1::APIService

  def self.from_yaml(*args, **params)
    Resource.from_yaml(*args, **params)
  end

  def self.from_json(*args, **params)
    Resource.from_json(*args, **params)
  end
end
