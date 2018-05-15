require 'pry'
require './environment'


# set :views, "/pirates"
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      "Welcome to the Nested Forms Lab! let's navigate to the '/new'"
      # redirect '/new'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      erb :'pirates/show'
    end


  end
end
