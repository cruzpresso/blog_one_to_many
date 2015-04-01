class BlogPostsController < ApplicationController

  def index
    @blog_posts = BlogPost.all
  end

  def new
    @blog_post = BlogPost.new
  end

  def create
    blog_post_params = params.require(:blog_post).permit(:title, :body)
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end

end
