require 'sinatra'
require 'sinatra/contrib'
require 'faraday'
require 'active_support/json'
require 'active_support/core_ext'
require 'require_all'
require_all 'lib'

module Data
    module Operator
        class App < Sinatra::Base
            register Sinatra::Contrib

            post '/api/data_jobs' do
                payload =JSON.parse(request.body.read).symbolize_keys
                DefineJob.run(DataJob.new(payload))
                json(payload)
            end

            get '/api/data_jobs' do
                json(MongoDb.db[:data_jobs].find({}))
            end


        end
    end
end