# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

# TokenReviewStatus is the result of the token authentication request.
class Pyrite::V1_6_1::Kubernetes::Apis::Authentication::V1::TokenReviewStatus
  # Authenticated indicates that the token was associated with a known user.
  property authenticated : Bool?

  # Error indicates that the token couldn't be checked
  property error : String?

  # User is the UserInfo associated with the provided token.
  property user : ::Pyrite::V1_6_1::Kubernetes::Apis::Authentication::V1::UserInfo

  YAML.mapping({authenticated: {type: Bool, nilable: true, key: authenticated, getter: false, setter: false},
                error:         {type: String, nilable: true, key: error, getter: false, setter: false},
                user:          {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Authentication::V1::UserInfo, nilable: true, key: user, getter: false, setter: false}}, true)

  JSON.mapping({authenticated: {type: Bool, nilable: true, key: authenticated, getter: false, setter: false},
                error:         {type: String, nilable: true, key: error, getter: false, setter: false},
                user:          {type: ::Pyrite::V1_6_1::Kubernetes::Apis::Authentication::V1::UserInfo, nilable: true, key: user, getter: false, setter: false}}, true)

  def initialize(@authenticated = nil, @error = nil, @user = nil)
  end
end
