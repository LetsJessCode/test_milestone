class KidsController < ApplicationController 

    get '/kids' do
        kid_list
        erb :'kids/index'
    end

    get '/kids/new' do
        @kid = Kid.new
        erb :'kids/new'
    end

    post '/kids' do
        @kid = current_user.kids.build(params[:kid])
         if @kid.save
            redirect '/kids'
         else 
            erb :'kids/new'
        end
    end

    get '/kids/:id' do
            set_kids
            if @kid
                erb :'kids/show'
            else
                redirect '/kids'
            end 
        end

    get '/kids/:id/edit' do
        set_kids
        erb :'kids/edit'
    end

    patch '/kids/:id' do
        set_kids
        if @kid.update( params[:kid])
         redirect "/kids/#{@kid.id}"
        else
            end
        end

    delete '/kids/:id' do 
        set_kids
        @kid.destroy 
        redirect '/kids'
    end

    private
        def set_kids
            @kid = Kid.find_by_id(params[:id])
        end

        def kid_list
            @kids = current_user.kids
        end
    end