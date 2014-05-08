class DogsController < ApplicationController
before_filter :signed_in_user, only: [:create, :new, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
    @comment = Comment.new
    @comments = @dog.comments
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

 private
    def dog_params
      params.require(:dog).permit(:name, :breed, :age, :image, :park_id)
    end

end


