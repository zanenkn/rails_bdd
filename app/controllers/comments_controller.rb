class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)

    if @comment.save
      redirect_to article_path(@article), notice: "Comment posted successfully."
    else
      redirect_to article_path(@article), notice: "Failed to post comment. Make sure you fill in 'Name' and 'Comment' fields."
    end
    
  end
 
  private
  def comment_params
      params.require(:comment).permit(:commenter, :body)
  end

end
