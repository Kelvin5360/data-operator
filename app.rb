require 'sinatra'
require 'sinatra/contrib'
require 'faraday'
require 'active_support/json'
require 'active_support/core_ext'
require 'require_all'
require_all 'lib'
require_all 'initializers'

module DataOperator
    class App < Sinatra::Base
        register Sinatra::Contrib

        get '/' do
            erb :jobs
        end

        post '/api/data_jobs' do
            payload =JSON.parse(request.body.read).symbolize_keys
            DefineJob.run(DataJob.new(payload))
            json(payload)
        end

        get '/api/data_jobs' do
            json(MongoDb.db[:data_jobs].find({}))
        end

        post '/api/trigger_job' do
            payload = JSON.parse(request.body.read).symbolize_keys
            TriggerJob.run(payload[:name], payload[:context])
        end

        post '/api/job_callback' do
            payload = JSON.parse(request.body.read).symbolize_keys
            puts "received ack for #{payload[:job_id]}, data_changes: #{payload[:data_changes]}"
        end
    end
end
