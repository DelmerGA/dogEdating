class CommentsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy, :edit]

  def create
    @comment = Comment.create(comment_params)
    current_user.comments.push @comment
    redirect_to dog_path(@comment.dog)
  end

  def edit
    if 
      @comment = current_user.comments.find(params[:id])
      @dog = @comment.dog
    else
      @comment == nil
      flash[:alert] = "Oops! You don't have permissions for that."
      redirect_to dog_path(params[:id])
    end
  end

  def update
    updated_comment= params.require(:comment).permit(:body)
    @comment = current_user.comments.find(params[:id])
    @comment.update_attributes(comment_params)
    redirect_to dog_path(@comment.dog)
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end

 