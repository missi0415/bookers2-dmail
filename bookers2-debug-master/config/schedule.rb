# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# env :PATH, ENV['PATH']
# set :output, 'log/cron.log'
# set :environment, :development
# require File.expand_path(File.dirname(__FILE__) + "/environment")
# rails_env = ENV['RAILS_ENV'] || :development
# set :environment, rails_env
# set :output, "#{Rails.root}/log/cron.log"
# env :PATH, ENV['PATH']
# env :GEM_PATH, ENV['GEM_PATH']

require File.expand_path(File.dirname(__FILE__) + "/environment")
rails_env = ENV['RAILS_ENV'] || :development
set :environment, rails_env
set :output, "#{Rails.root}/log/cron.log"

# env :PATH, ENV['PATH']
# env :GEM_PATH, ENV['GEM_PATH']
# set :environment, :development
# set :output, { :error => "log/error.log", :standard => 'log/cron.log' }
every 1.day, at: "9:00 am" do
  puts 'hello'
  # runner "ThanksMailer.notify_user"
  # puts 'runnnerrr'
  rake 'dmail:dmail'
  puts 'rakedmail'

end