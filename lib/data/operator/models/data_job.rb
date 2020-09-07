require 'dry-struct'

module DataOperator
    module Types
        include Dry.Types()
    end

    class DataJob < Dry::Struct
        attribute :name, Types::String
        attribute :url, Types::String
        attribute :script, Types::String
        attribute :cron, Types::String.optional
        attribute :depends_on, Types::Array.of(Types::Coercible::String).optional
    end
end
