require 'mongo'
module MongoDb

    def self.db        
        @client ||= Mongo::Client.new(ENV['MONGODB_URI'], retry_writes: false)
        @client
    end
end