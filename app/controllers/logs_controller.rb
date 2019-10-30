class LogsController < ApplicationController
    get '/logs' do
        if logged_in?
            @logs = User.find_by_id(session[:user_id]).logs
            
            erb :"/logs/index"
        else
            redirect '/login'
        end
    end

    get '/logs/new' do
        if logged_in?
         erb :"/logs/new"
        else
            redirect 'login'
        end
    end

    get '/logs/:id' do
        if logged_in?
            @log = Log.find_by_id(params[:id])
            
            erb :"/logs/show"
        else
            redirect '/login'
        end
    end

    post '/logs' do
        binding.pry
    end
   
end