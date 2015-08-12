require 'pry'
require 'active_record'

## Connect to the database
require_relative 'db/connection'

# Load models
require_relative 'models/destination'
require_relative 'models/waittime'
require_relative 'models/user'

binding.pry

puts "this line fixes binding.pry bug"
