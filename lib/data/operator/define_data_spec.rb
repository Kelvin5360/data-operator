module DataOperator
    class DefineDataSpec
        def self.run(data_spec)
            MongoDb.db[:data_spec].insert_one(data_spec.as_json)
        end
    end
end
