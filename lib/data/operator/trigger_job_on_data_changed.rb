module DataOperator
    class TriggerJobOnDataChanged
        def self.run(data_changes)
            data_changes.each do |data_change_raw|
                data_change = data_change_raw.with_indifferent_access
                job_specs = MongoDb.db[:data_jobs].find({depends_on: data_change[:type]})
                job_specs.each do |job_spec|
                    puts "triggering job #{job_spec[:name]}"
                    Faraday.post(job_spec[:url], data_change[:key].merge({job_id: job_spec[:name]}).to_json, 'Content-Type': 'application/json')
                end
            end
        end
    end
end
