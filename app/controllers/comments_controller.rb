class CommentsController < ApplicationController

  # def index
  #   @comments = Comment.all
  #   redirect_to @dog(comment_params[:dog_id])
  # end

  def create
    @comment = Comment.create(comment_params)
    #binding.pry
    redirect_to dog_path(comment_params[:dog_id])
  end

  def show
    redirect_to dog_path
  end


  private

  def comment_params
    params.require(:comment).permit(:body, :dog_id)
  end

end


