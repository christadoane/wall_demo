class SessionsController < ApplicationController
	def new

	end

	def create
		user = User.find_by_email(params[:email])
		if user.password == params[:password]
			session[:id] = user.id
			redirect_to "/posts"
		else
			redirect_to "/sessions/new"
		end
	end

	def destroy

	end
end
