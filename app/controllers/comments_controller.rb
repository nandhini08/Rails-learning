class CommentsController < ApplicationController
	http_basic_authenticate_with name: "abc", password: "secret", only: :destroy
	def create
		@detail = Detail.find(params[:detail_id])
		@comment = @detail.comments.create(comment_params)
		redirect_to detail_path(@detail)
	end
	def index
	end
	def destroy
		@detail = Detail.find(params[:detail_id])
		@comment = @detail.comments.find(params[:id])
		@comment.destroy
		redirect_to detail_path(@detail)
	end
	def edit
		@detail = Detail.find(params[:detail_id])
		@comment = @detail.comments.find(params[:id])
	end
	def update
		@detail = Detail.find(params[:detail_id])
		@comment = @detail.comments.find(params[:id])
		if @comment.update(comment_params)
			redirect_to detail_path(@detail)
		else
			render 'edit'
		end
	end
	private
	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end