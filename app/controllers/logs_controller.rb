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

    get '/logs/:id/edit' do
        @users = User.all
        @log = Log.find_by_id(params[:id])
        if @log.user.id == current_user.id
            erb :'/logs/edit'
        else
            redirect "/logs"
        end
    end

    post '/logs' do

        params[:user_id] = session[:user_id]
        log = Log.new(params)

        if log.save
            redirect '/logs'
        else
            redirect '/logs/new'
        end
    end
   
end