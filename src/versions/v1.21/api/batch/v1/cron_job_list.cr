# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJobList is a collection of cron jobs.
  class Api::Batch::V1::CronJobList < Kubernetes::List(Api::Batch::V1::CronJob)
  end
end
