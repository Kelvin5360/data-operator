require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '1s' do
  # try trigger job
  puts "job trigger running!!"
end