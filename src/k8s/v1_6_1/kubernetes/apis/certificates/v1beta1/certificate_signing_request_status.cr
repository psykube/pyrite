require "yaml"
require "json"

class K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestStatus
  # If request was approved, the controller will place the issued certificate here.
  property certificate : String?

  # Conditions applied to the request, such as approval or denial.
  property conditions : Array(::K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestCondition)?

  YAML.mapping({certificate: {type: String, nilable: true, key: certificate, getter: false, setter: false},
                conditions:  {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestCondition), nilable: true, key: conditions, getter: false, setter: false}}, true)

  JSON.mapping({certificate: {type: String, nilable: true, key: certificate, getter: false, setter: false},
                conditions:  {type: Array(::K8S::V1_6_1::Kubernetes::Apis::Certificates::V1beta1::CertificateSigningRequestCondition), nilable: true, key: conditions, getter: false, setter: false}}, true)

  def initialize(@certificate = nil, @conditions = nil)
  end
end
