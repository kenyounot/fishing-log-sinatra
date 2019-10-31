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
        @log = Log.find_by_id(params[:id])
        if @log.user.id == current_user.id
            erb :"/logs/edit"
        else
            redirect "/logs"
        end
    end

    patch '/logs/:id' do
        @log = Log.find_by_id(params[:id])
        params.delete("_method")
        if @log.update(params)
            redirect "/logs/#{@log.id}"
        else
            redirect "/logs/#{@log.id}/edit"
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

    delete '/logs/:id' do
        @log = Log.find_by_id(params[:id])
        if @log.user.id == current_user.id
            @log.delete
            redirect '/logs'

        else
            redirect '/logs'
        end
    end
   
end