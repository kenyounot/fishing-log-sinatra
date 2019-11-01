class SessionsController < ApplicationController
    get '/login' do
        if logged_in?
            redirect "/logs"
        else
            erb :"/sessions/login"
        end
    end

    post '/login' do
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/logs"
        else
            redirect "/login" 
        end
    end

    get '/logout' do
        session.clear
        redirect '/login'
    end
end