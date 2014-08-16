class CommentsController < ApplicationController
	def index
		render palin: params
	end

	def create
		#render plain: params
		@story = Story.find(params[:story_id])
    	@comment = @story.comments.create(comment_params)
    	redirect_to story_path(@story)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:content,:story_id)
    end
end
