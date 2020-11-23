class SessionsController < ApplicationController

  skip_before_action :ensure_login, only:[:new, :create]

  def new
  	# Login Page - new.html.erb
  end

  def create
  	user = User.find_by(username: params[:username])
  	password = params[:password]

  	if user && user.authenticate(password)
  		session[:user_id] = user.id 
  		redirect_to root_path, notice: "Logged in successfully."
  	else
  		redirect_to login_path, alert: "Invalid username/password combination."
    end
  end

  def destroy
  	reset_session # wipe out ession and everything in it
  	redirect_to login_path, notice: "You've been logged out."
  end
end
