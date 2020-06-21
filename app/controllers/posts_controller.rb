class PostsController < ApplicationController
 # before_action :ensure_correct_user,{only: [:edit,:update,:destroy]}

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post[:user_id] = current_user.id
    if @post.save
      redirect_to post_path(@post)
    else
      render "new"

    end
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find_by(id: @post.user_id)
  end

  def edit
    @post = Post.find(params[:id])

  end

  def update
    @post = Post.find(params[:id])
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
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

   def search

    if (params[:maker_janru_name].nil?)
      @posts = Post.where(color_janru_id: params[:color_janru_name])
    else
      @posts = Post.where(maker_janru_id: params[:maker_janru_name])
    end
    render :index
   end


  private
  def post_params
    params.require(:post).permit(:post_image, :option, :color, :maker, :name, :maker_janru_name, :color_janru_name)
  end
end
