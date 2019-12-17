require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "secret"
       
    end


    get "/" do
        @session = session
        erb :index
        
        
    end

   

  post "/checkout" do
    
    @session = session
    @session[:item] = params[:item]
    puts @session[:item]
    erb :'/purchase'
  end

end