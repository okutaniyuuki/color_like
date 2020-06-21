class UsersController < ApplicationController
  def new
    @user = User.new

  end

  def create
    @user = User.new
    if   @user.save
      redirect_to user_path
    else
      render "new"
    end
  end

  def show
  	@user = User.find(params[:id])
    @post = @user.posts
  end

  def edit
  	@user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])
  	if @user.update(user_params)
       redirect_to user_path
  	else
  		render "edit"
    end
  end

  def index

  end

  private
	def user_params
		params.require(:user).permit(:image, :last_name, :first_name, :introduction, :forte, :like_maker,)
	end
end
