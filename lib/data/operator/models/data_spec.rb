require 'dry-struct'

module DataOperator
    module Types
        include Dry.Types()
    end

    class DataSpec < Dry::Struct
        attribute :name, Types::String
        attribute :url, Types::String
        attribute :keys, Types::Array.of(Types::String)
        attribute :value_field, Types::String
    end
end
