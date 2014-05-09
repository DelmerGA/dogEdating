class DogsController < ApplicationController
before_filter :signed_in_user, only: [:create, :new, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
    #@uploader.success_action_redirect = @dogs
  end

  def show
    @dog = Dog.find_by_id(params[:id])
    #@uploader = Dog.new.image
    #@uploader.success_action_redirect = @dogs
    
    if @dog.nil?
      flash[:alert] = "Oops! That resource is not available."
      redirect_to parks_path
    else 
      @comment = Comment.new
      @comments = @dog.comments
    end
  end

  def new
    @dog = Dog.new
  end

  def create
    dog = Dog.create dog_params
    redirect_to(dog)
  end

  def edit
    @dog = current_user.dog(params[:id])
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
      if @dog.update_attributes(dog_params)
        redirect_to(@dog)
      else
        render :edit
      end
  end

  def destroy
    Dog.find(params[:id]).destroy
    redirect_to parks_path
  end

 private
    def dog_params
      params.require(:dog).permit(:name, :breed, :age, :image, :park_id)
    end

end


