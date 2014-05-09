class CommentsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy, :edit]

  def create
    @comment = Comment.create(comment_params)
    current_user.comments.push @comment
    redirect_to dog_path(@comment.dog)
  end

  def edit
    if @comment == nil
      flash[:alert] = "Oops! You don't have permissions for that."
      redirect_to dog_path(:id)
    else
      @comment = current_user.comments.find(params[:id])
      @dog = @comment.dog
    end
  end
  
  def update
    updated_comment= params.require(:comment).permit(:body)
    @comment = current_user.comment.find(params[:id])
    @comment.update_attributes(comment_params)
    redirect_to dog_path(@comment.dog)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :dog_id)
  end

end


