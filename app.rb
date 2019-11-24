require_relative 'config/environment'

class App < Sinatra::Base
  enable :sessions

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    session[:item] = params[:item]
    @session = session

    erb :checkout
  end
end