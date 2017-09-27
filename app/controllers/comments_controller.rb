class CommentsController < ApplicationController
	def create
		@detail=Detail.find(params[:detail_id])
		@comment=@detail.comments.create(comment_params)
	end
	private 
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
	def index
	end
end
