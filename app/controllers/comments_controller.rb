class CommentsController < ApplicationController
    def create
		@forum = Forum.find(params[:forum_id])
		@comment = Comment.new(content:params[:comment][:content], user: current_user)
		@forum.comments << @comment
		@comment.save
		redirect_to @forum
	end

	def destroy
		@forum = Forum.find(params[:forum_id])
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to @forum
	end
end
