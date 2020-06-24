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
    @posts = Post.page(params[:page]).reverse_order
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

 def search

  if (params[:maker_janru_name].nil?)
    @posts = Post.where(color_janru_id: params[:color_janru_name]).page(params[:page]).reverse_order
  else
    @posts = Post.where(maker_janru_id: params[:maker_janru_name]).page(params[:page]).reverse_order
  end
  render :index
 end

 def createbookmarks
    @bookmark = Bookmark.new(post_id:params[:post_id], user_id: current_user.id)
    if @bookmark.save
      redirect_to bookmarks_path
    else
      redirect_to post_path(params[:post_id])
    end
 end

 def desbookmarks
  @bookmark = Bookmark.find_by(post_id:params[:post_id],user_id:current_user.id)
    if @bookmark.destroy
    redirect_to bookmarks_path
    end
 end

 def createfavorites
     @post = Post.find(params[:post_id])
      favorite = @post.favorites.new(user_id: current_user.id)
            favorite.save!
            redirect_to request.referer
 end

 def desfavorites
    post = Post.find(params[:post_id])
            favorite = current_user.favorites.find_by(post_id: post.id)
            favorite.destroy
           redirect_to request.referer
 end


  private
  def redirect
    case params[:redirect_id].to_i
    when 0
      redirect_to posts_path
    when 1
      redirect_to post_path
    end
  end

  def post_params
    params.require(:post).permit(:post_image, :after_image, :post_id, :user_id, :option, :color, :maker, :name, :maker_janru_name, :color_janru_name, :maker_janru_id, :color_janru_id, images_attributes: [:image_name])
  end
end
