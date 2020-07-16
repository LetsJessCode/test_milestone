class UserController < ApplicationController
    get "/signup" do 

        erb :'users/new'
      end 
      
      post "/signup" do
        @user = User.new(params[:user])
        if user.empty?
            redirect "/incomplete"

        else 
            user.save
            session[:user_id] = @user.id
            redirect "kids/new"  
        end
    end
end 