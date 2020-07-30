require 'dry-struct'

module Data
    module Operator
        module Types
            include Dry.Types()
        end
          
        class DataJob < Dry::Struct
            attribute :name, Types::String
            attribute :url, Types::String
        end
    end
end