require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "active_record" # the ORM
require "pry" # for debugging

require_relative "db/connection" # require the db connection file that connects us to PSQL, prior to loading models
require_relative "models/artist" # require the Student class definition that we defined in the models/student.rb file
require_relative "models/painting" # require the Student class definition that we defined in the models/student.rb file

system("ruby db/seed.rb")
binding.pry

puts "end of application"
