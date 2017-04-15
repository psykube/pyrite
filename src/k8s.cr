require "json"
require "yaml"

module K8S
  # Parse the version from the shard.yml
  VERSION = YAML.parse({{ `cat ../shard.yml` }})["version"].to_s

  def self.url=(url)
    @@client = HTTP::Client.new(url)
  end

  def self.client
    @@client
  end
end

if File.exists("~/.kube/config")
  File.read("~/.kube/config")
  Kubernetes.url = ""
end

require "./k8s/*"
