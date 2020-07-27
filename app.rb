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

            get '/api/stocks' do
                json(GetStocks.run)
            end

        end
    end
end