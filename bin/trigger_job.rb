require 'faraday'
require 'active_support/json'
require 'active_support/core_ext'
require 'require_all'
require_rel '../lib'

DataOperator::TriggerJob.run ARGV[0], {}