class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @park = Dog.new
  end

  def create
    @dog = Dog.create dog_params
    redirect_to dog
  end

 private
    def dog_params
      params.require(:dog).permit(:name, :breed, :age, :image)
    end

end


