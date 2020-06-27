class BookmarksController < ApplicationController


  def index
    @user  = current_user
    @bookmarks = Bookmark.where(user_id: @user.id)

  end

  def create
    @bookmark = Bookmark.new(post_id:params[:post_id], user_id: current_user.id)
    if @bookmark.save
      redirect_to bookmarks_path
    else
      redirect_to post_path(params[:post_id])
    end
  end


  def destroy
  	@bookmark = Bookmark.find_by(post_id:pamas[:post_id],user_id:current_user.id)
  	if @bookmark.destroy
  	redirect_to bookmareks_path
    end
  end

  private
  def user_params
    params.require(:bookmark).permit(:user_id, :post_id)
  end


end
