module Pyrite::Kubernetes
  VERSION = "1.7"
  alias Resource = Resources::Apiregistration::V1beta1::APIService |
                   Resources::V1::Binding |
                   Resources::V1::ComponentStatus |
                   Resources::V1::ConfigMap |
                   Resources::V1::Endpoints |
                   Resources::V1::Event |
                   Resources::V1::LimitRange |
                   Resources::V1::Namespace |
                   Resources::V1::Node |
                   Resources::V1::PersistentVolume |
                   Resources::V1::PersistentVolumeClaim |
                   Resources::V1::Pod |
                   Resources::V1::PodTemplate |
                   Resources::V1::ReplicationController |
                   Resources::V1::ResourceQuota |
                   Resources::V1::Secret |
                   Resources::V1::Service |
                   Resources::V1::ServiceAccount |
                   Resources::Admissionregistration::V1alpha1::ExternalAdmissionHookConfiguration |
                   Resources::Admissionregistration::V1alpha1::InitializerConfiguration |
                   Resources::Apps::V1beta1::ControllerRevision |
                   Resources::Apps::V1beta1::Deployment |
                   Resources::Apps::V1beta1::Scale |
                   Resources::Apps::V1beta1::StatefulSet |
                   Resources::Authentication::V1::TokenReview |
                   Resources::Authentication::V1beta1::TokenReview |
                   Resources::Authorization::V1::LocalSubjectAccessReview |
                   Resources::Authorization::V1::SelfSubjectAccessReview |
                   Resources::Authorization::V1::SubjectAccessReview |
                   Resources::Authorization::V1beta1::LocalSubjectAccessReview |
                   Resources::Authorization::V1beta1::SelfSubjectAccessReview |
                   Resources::Authorization::V1beta1::SubjectAccessReview |
                   Resources::Autoscaling::V1::HorizontalPodAutoscaler |
                   Resources::Autoscaling::V1::Scale |
                   Resources::Autoscaling::V2alpha1::HorizontalPodAutoscaler |
                   Resources::Batch::V1::Job |
                   Resources::Batch::V2alpha1::CronJob |
                   Resources::Certificates::V1beta1::CertificateSigningRequest |
                   Resources::Extensions::V1beta1::DaemonSet |
                   Resources::Extensions::V1beta1::Deployment |
                   Resources::Extensions::V1beta1::Ingress |
                   Resources::Extensions::V1beta1::NetworkPolicy |
                   Resources::Extensions::V1beta1::PodSecurityPolicy |
                   Resources::Extensions::V1beta1::ReplicaSet |
                   Resources::Extensions::V1beta1::Scale |
                   Resources::Extensions::V1beta1::ThirdPartyResource |
                   Resources::Networking::V1::NetworkPolicy |
                   Resources::Policy::V1beta1::Eviction |
                   Resources::Policy::V1beta1::PodDisruptionBudget |
                   Resources::Rbac::V1alpha1::ClusterRole |
                   Resources::Rbac::V1alpha1::ClusterRoleBinding |
                   Resources::Rbac::V1alpha1::Role |
                   Resources::Rbac::V1alpha1::RoleBinding |
                   Resources::Rbac::V1beta1::ClusterRole |
                   Resources::Rbac::V1beta1::ClusterRoleBinding |
                   Resources::Rbac::V1beta1::Role |
                   Resources::Rbac::V1beta1::RoleBinding |
                   Resources::Settings::V1alpha1::PodPreset |
                   Resources::Storage::V1::StorageClass |
                   Resources::Storage::V1beta1::StorageClass

  def self.from_yaml(*args, **params)
    Resource.from_yaml(*args, **params)
  end

  def self.from_json(*args, **params)
    Resource.from_json(*args, **params)
  end
end
