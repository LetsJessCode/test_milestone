class SessionsController < ApplicationController
    get '/login' do 
        erb :login
    end

    post 'login' do
        @user = User.find_by_username(params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect 'milestones/user[:id]'
        else
            redirect 'incomplete'
        end
    end
    
    get '/logout' do
        session.clear
        redirect '/'
    end
end
