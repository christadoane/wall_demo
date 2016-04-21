class CommentsController < ApplicationController
	def create
		Comment.create(comment: params[:comment], user: User.find(session[:id]), post: Post.find(params[:dolphin]))
		redirect_to "/posts"
	end
end
