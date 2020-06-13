class BookmarksController < ApplicationController
  def show
  	@bookmarek = Bookmarek.find(pamas[:id])

  end

  def index
  	@bookmaerk = Bookmaerk.all
  end

  def create
  end

  def destroy
  	@bookmaerk = Bookmaerk.find(pamas[:id])
  	@bookmaerk.destroy
  	redirect_to bookmareks_path
  end


end
