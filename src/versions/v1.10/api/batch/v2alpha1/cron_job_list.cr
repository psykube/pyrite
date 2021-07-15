# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

module Pyrite
  # CronJobList is a collection of cron jobs.
  class Api::Batch::V2alpha1::CronJobList < Kubernetes::List(Api::Batch::V2alpha1::CronJob)
  end
end
