class CommentsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def create
    #raise params.inspect
    @comment = Comment.create(comment_params)
    current_user.comments.push @comment
    redirect_to dog_path(@comment.dog)
  end

  def edit
    @comment = current_user.comments.find(params[:id])
    @dog = @comment.dog
  end
  
  def update
    updated_comment= params.require(:comment).permit(:body)
    @comment = current_user.comments.find(params[:id])
    @comment.update_attributes(comment_params)
    redirect_to dog_path(@comment.dog)
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :dog_id)
  end

end


