class KidsController < ApplicationController

get 'kids/new' do
    erb :'kids/new'
end

post '/kids/new' do
    # @user = User[params]
    erb:'kids/new'
end

end