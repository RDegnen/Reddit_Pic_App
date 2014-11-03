class SessionsController < ApplicationController

	def create
		auth = request.env["omniauth.auth"]
		user = user.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
		session[:user_id] = user_id
		redirect_to root_url, :notice "Signed in"
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, :notice "Signed out"
	end

end
