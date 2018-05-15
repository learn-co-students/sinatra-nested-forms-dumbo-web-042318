require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'pirates/index'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |attr|
        Ship.new(attr)
      end

      @ships = Ship.all

      erb :'pirates/show'

      # binding.pry
    end

  end
end
