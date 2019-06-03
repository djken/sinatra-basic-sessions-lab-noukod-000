require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, 'secrets'
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    session[:item_purchase] = params[:item_purchase]
    @session = session
    "#{@session[:item_purchase]}"
  end
end
