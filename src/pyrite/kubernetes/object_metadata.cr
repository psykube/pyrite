
module Pyrite::Kubernetes
  module ObjectMetadata
    macro included
      # Standard object's metadata. More info: [https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata)
      @[::JSON::Field(key: "metadata")]
      @[::YAML::Field(key: "metadata")]
      property metadata : Apimachinery::Apis::Meta::V1::ObjectMeta | Nil
    end
  end
end