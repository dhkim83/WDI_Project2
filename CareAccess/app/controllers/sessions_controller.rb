class SessionsController < ApplicationController
	def new
		# Present an empty login form
		@user = User.new
		@is_login = true
	end

	def create
		# Find the user that is trying to log in 
		u = User.where(email: params[:user][:email]).first

		if u.authenticate(params[:user][:password])
			#class
		# if u.is_active == false
		# 	redirect_to reactivate user_path(u.id)
		# else


			# Store as a cookie in the users' browser the ID of them,
			# indicating that they are logged in
			
			session[:user_id] = u.id.to_s
			redirect_to user_path(current_user)
		
		else
			# Go back to the login page 
			# @login_attempt = false
			
			redirect_to new_session_path

		end
	end

	def destroy
		reset_session
		redirect_to hospitals_path, notice: "You aready logged out"
		
	end
end



  

 

  
    
  

	