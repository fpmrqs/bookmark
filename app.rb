require 'sinatra/base'
require 'sinatra/reloader'

# change class name below, in the config.ru & spec_helper
class Bookmark < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload 'app.rb'
  end 

  run! if app_file == $0
end