class MilestonesController < ApplicationController
    get '/milestones' do
        
        @milestones = Milestone.all
        erb :'kids/milestones/homepage'
    end
end 