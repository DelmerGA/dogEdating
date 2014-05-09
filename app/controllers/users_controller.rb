class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @dogs = @user.dogs
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "dogEdating"
      sign_in @user
      redirect_to root_path
    else
      flash[:error] = "Failed to create account.  Try again."
      redirect_to new_user_path
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    redirect_to @user
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end

