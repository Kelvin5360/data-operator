require 'dry-struct'

module DataOperator
    module Types
        include Dry.Types()
    end

    class DataJob < Dry::Struct
        attribute :name, Types::String
        attribute :url, Types::String
        attribute :cron, Types::String
        attribute :depends_on, Types::Array.of(Types::Coercible::String)
    end
end
