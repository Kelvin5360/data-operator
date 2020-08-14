module DataOperator
    class DefineJob
        def self.run(data_job)
            MongoDb.db[:data_jobs].insert_one(data_job.as_json)
        end
    end
end

