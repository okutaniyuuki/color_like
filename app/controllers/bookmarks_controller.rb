class BookmarksController < ApplicationController
  def show
  	@post = Post.find(pamas[:id])


  end

  def index
    @bookmark = Bookmark.all
    @bookmark = Bookmark.where("user_id = ?", @user)
  end

  def create
    @user_id = session[:id] #ログインしたユーザのID
    @post_id = post.find(params[:id]).id #特定の本のID
    #book_idに@book_id、user_idに@user_idを入れて、モデルに新しいオブジェクトを作る
    @bookmark = Bookmark.new(post_id: @post_id, user_id: @user_id)
    if @bookmark.save
      #保存に成功した場合、投稿詳細画面に戻る
      redirect_to post_path
    end
  end


  def destroy
  	@bookmark = Bookmark.find(pamas[:id])
  	@bookmark.destroy
  	redirect_to bookmareks_path
  end


end
