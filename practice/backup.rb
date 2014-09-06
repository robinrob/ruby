#!/usr/bin/env ruby

require 'CGI'

# heroku_app = ENV['HEROKU_APP']
# heroku_pass = ENV['HEROKU_PASS']

def backup_db(url, db_name, day)
	backup_db_name = "#{db_name}-backup-#{day}"

	params = "_id=#{backup_db_name}&source=#{url}/#{db_name}&target=#{url}/#{backup_db_name}"
  data = "#{CGI::escape(params)}"
  # puts data


	# system("curl -X PUT #{url}/#{backup_db_name}")

  # -H 'Content-Type: application-json' -d -@
  # content_type = "Content-Type: application/x-www-form-urlen-coded"
  content_type = 'Content-Type: application-json'
  command = "curl -X PUT '#{url}/_replicator/#{backup_db_name}' -H '#{content_type}' -d '{\"_id\":\"#{backup_db_name}\"}'"
  puts "command: " + command
  system(command)
end

heroku_app="app9733063.heroku"
heroku_pass="JQElgaMaHvF8oT4NA1HmPJYO"

url = "https://#{heroku_app}:#{heroku_pass}@#{heroku_app}.cloudant.com"

# puts url

# curl -X PUT "${url}/_replicator"

backup_db(url, "postcodes", "monday")
# backup_db vacancies monday
# backup_db vacancies-backup monday
# backup_db vacancies-dev monday
