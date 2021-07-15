require "json"
require "yaml"

module Pyrite::Kubernetes
  VERSION = "1.9"

  def self.from_yaml(*args, **params)
    Resource.from_yaml(*args, **params)
  end

  def self.from_json(*args, **params)
    Resource.from_json(*args, **params)
  end
end
