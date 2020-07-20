class KidsController < ApplicationController

    get '/kids' do
        @kids = Kid.all
        erb :'kids/index'
    end

    get '/kids/new' do
        @kid = Kid.new
        erb :'kids/new'
    end

    post '/kids/index' do
        @kid = Kid.new(params[:kid])
         if @kid.save
            redirect '/kids/index'
         else 
            erb :'kids/new'
        end
    end

    get '/kids/:id' do
        @kid = Kid.find_by_id(params[:id])
            if @kid
                erb :'kids/show'
            else
                redirect '/kids'
            end 
        end
end