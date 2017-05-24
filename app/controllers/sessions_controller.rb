class SessionsController < ApplicationController

	def new

	end

	def create

		owner = Owner.find_by_email(params[:email])
		# TODO: make sure emails in database are unique
		if owner && owner.authenticate(params[:password])
			session[:owner_id] = owner.id
			redirect_to '/'
		else
			flash[:error] = "Invalid Username or Password. Please try again."
			redirect_to '/login'
		end
		
	end

	def destroy
		session[:owner_id] = nil
		redirect_to '/login'
	end

end
