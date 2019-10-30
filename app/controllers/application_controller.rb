require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "sosecretitsnotevenfunny"
  end

  get "/" do
    redirect "/login"
  end





  helpers do
    def logged_in?
      session[:user_id]
    end

    def current_user
      @user ||= User.find_by_id[session[:user_id]]
      binding.pry
    end
  end

end
