module Data
    module Operator
        class DefineJob
            def self.run(data_job)
                MongoDb.db[data_jobs].insert_one(data_job)
            end
        end
    end
end
