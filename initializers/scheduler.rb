require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '1s' do
  DataOperator::TriggerJobs.run
end