class LogsController < ApplicationController
    get '/logs' do
        @logs = Log.all
        erb :"/logs/index"
    end

    get '/logs/:id' do
        @log = Log.find_by_id(params[:id])
        
        erb :"/logs/show"
    end
end