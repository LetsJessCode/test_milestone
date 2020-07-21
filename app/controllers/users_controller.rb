class UserController < ApplicationController
    get '/signup' do 

        erb :'users/new'
    end 
      
    post '/signup' do
      @user = User.new(params[:user])
        if @user.save
            session[:user_id] = @user.id
            redirect '/kids'
        else
            erb :'users/new'
        end
    end
end 