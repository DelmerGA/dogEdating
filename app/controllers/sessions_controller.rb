class SessionsController < ApplicationController

  def new
  end

  def create
    user=User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Sign the user in and redirect to home page.
      sign_in user
      flash[:notice]='You are now signed in.'
      redirect_to root_path
    else
      # Create an error message and re-render the signin form.
      flash[:error]='Invalid email address/password combination.'
      redirect_to signin_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end


