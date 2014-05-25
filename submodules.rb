#!/usr/bin/env ruby

require 'csv'

CSV.foreach("repos.csv", :headers => true) do |csv_obj|
  
  repo = csv_obj['Repo']
  url = csv_obj['URL']
  system("git submodule add -f #{url} #{repo}")  
  
end