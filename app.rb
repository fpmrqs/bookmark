require 'sinatra/base'
require 'sinatra/reloader'

# change class name below, in the config.ru & spec_helper
require './lib/bookmarks'

class Bookmark < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload 'app.rb'
    also_reload './lib/bookmarks.rb'
  end 

  get '/bookmarks' do
    @bookmarks = Bookmarks.new.list
    erb :index
  end

  run! if app_file == $0
end