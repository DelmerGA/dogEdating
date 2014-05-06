class CommentsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def create
    @comment = Comment.create(comment_params)
    redirect_to dog_path(comment_params[:dog_id])
  end

  # def destroy 
  #   comment = Comment.find(params[:id])
  #   dog = comment.dog
  #   comment.destroy
  #   redirect_to dog_path
  # end

  private

  def comment_params
    params.require(:comment).permit(:body, :dog_id)
  end

end


