class UsersController < ApplicationController

    get '/users/signup' do
        erb :"/users/signup"
    end

    post '/users' do
        @user = User.new(params)
        if @user.save
            session[:user_id] = @user.id
            redirect '/logs'
        else
            redirect '/users/signup'
        end
    end

end