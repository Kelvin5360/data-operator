    module DataOperator
        class TriggerJob
            def self.run(job_id)
                job_spec = MongoDb.db[:data_jobs].find({name: job_id})                
                puts "triggering job #{job_spec.name}"
                Faraday.post(job_spec.url)
            end
        end
    end
