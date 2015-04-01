class CommentsController < ApplicationController

  def create
    comment_params = params.require(:comment).permit(:body)
    @blog_post = BlogPost.find(params[:blog_post_id])
    @comment = @blog_post.comments.new(comment_params)
  
    if @comment.save
      redirect_to blog_post_path(@blog_post)
    end
  end

end