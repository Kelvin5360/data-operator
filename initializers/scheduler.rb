require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '1s' do
  # try trigger job
end