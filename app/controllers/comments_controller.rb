class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to @comment.customer
    else
      @customer = @comment.customer
      render template: "customers/show"
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @comment.customer
  end
  
  private

  def comment_params
    params.require(:comment).permit(:body, :customer_id)
  end
end
