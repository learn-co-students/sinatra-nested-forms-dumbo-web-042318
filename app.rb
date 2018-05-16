require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :"pirates/index"
    end

    get '/new' do
      erb :"pirates/new"
    end

    # code other routes/actions here

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship = params[:pirate][:ships].map do |ships|
        Ship.new(ships)
      end
      
      erb :"pirates/show"
    end

 end

end
