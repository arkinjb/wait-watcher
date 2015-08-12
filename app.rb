require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# Load the file to connect to the DB
require_relative 'db/connection.rb'

# Load models
require_relative 'models/user'
require_relative 'models/destination'
require_relative 'models/waittime'

# Load specific routes / controllers
require_relative 'controllers/users'
require_relative 'controllers/destinations'
require_relative 'controllers/waittimes'

####################
#  General routes  #
####################
get "/" do
  @destinations = Destination.all
  @waittimes = Waittime.all
  erb :"home"
end
