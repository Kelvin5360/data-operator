    module DataOperator
        class TriggerJobs
            def self.run
                all_jobs = MongoDb.db[:data_jobs].find({})
                all_jobs.each do |job_spec|
                    puts "triggering job #{job_spec[:name]}"
                    
                end
            end
        end
    end
