class PostsController < ApplicationController
	def index
		@user = User.find(session[:id])
		@posts = Post.all
	end


	def create
		Post.create(post: params[:post], user: User.find(session[:id]))
		redirect_to "/posts"
	end

	def destroy
		p = Post.find(params[:id])
		p.destroy
		redirect_to "/posts"
	end

end
