class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  def create
    @post = Post.new
    if @post.save(post_params)
      redirect_to post_path
    else
      render "new"

    end
  end

  def show
    post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])

  end
  def update
    @post = Post.find(params[:id]
    if @post.update(post_params)
      redirect_to post_path
    else
      render "edit"
    end
  end


  def index
    @posts = Post.all

  end
  
  def destroy
    @post = Post.find(params[id])
    @post.destroy
    redirect_to posts_path
  end



  private
  def post_params
    params.require(:post).permit(:ppost_image, :option, :color, :maker,)
  end
end
