class ParksController < ApplicationController

  def index
    @parks = Park.all
  end

  # def new
  #   @park = Park.new
  # end

  # def create
  #   @park = Park.create park_params
  #   #redirect_to
  # end

  def show
    @park = Park.find(params[:id])
  end


end

