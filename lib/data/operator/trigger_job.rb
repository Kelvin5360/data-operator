    module DataOperator
        class TriggerJob
            def self.run(job_id, context)
                job_spec = MongoDb.db[:data_jobs].find({name: job_id})                
                puts "triggering job #{job_spec.name}"
                Faraday.post(job_spec.url, (context.nil? ? {}: context).merge({job_id: job_spec.name}).to_json, 'Content-Type': 'application/json')
            end
        end
    end
