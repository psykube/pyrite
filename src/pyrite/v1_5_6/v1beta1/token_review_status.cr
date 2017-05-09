# THIS FILE WAS AUTO GENERATED FROM THE SWAGGER SPEC

require "yaml"
require "json"

module Pyrite::V1_5_6
  # TokenReviewStatus is the result of the token authentication request.
  class Definitions::V1beta1::TokenReviewStatus
    # Authenticated indicates that the token was associated with a known user.
    property authenticated : Bool?

    # Error indicates that the token couldn't be checked
    property error : String?

    # User is the UserInfo associated with the provided token.
    property user : V1beta1::UserInfo

    YAML.mapping({authenticated: {type: Bool, nilable: true, key: authenticated, getter: false, setter: false},
                  error:         {type: String, nilable: true, key: error, getter: false, setter: false},
                  user:          {type: V1beta1::UserInfo, nilable: true, key: user, getter: false, setter: false}}, true)

    JSON.mapping({authenticated: {type: Bool, nilable: true, key: authenticated, getter: false, setter: false},
                  error:         {type: String, nilable: true, key: error, getter: false, setter: false},
                  user:          {type: V1beta1::UserInfo, nilable: true, key: user, getter: false, setter: false}}, true)

    def initialize(@authenticated : Bool? = nil, @error : String? = nil, @user : V1beta1::UserInfo = nil)
    end
  end
end
