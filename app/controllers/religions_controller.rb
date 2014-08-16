class ReligionsController < ApplicationController
	def index
		@religions = Religion.all
    	@stories = Story.all
	end
    def show
    	@religion = Religion.find(params[:id])
    	@stories = @religion.stories
    	render "index"
    end
	
end
