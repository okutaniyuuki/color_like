class ColorJanrusController < ApplicationController
  def new
  end

  def index
  	@colors = Color.all
  	@color = Color.new
  end

  def search
  end
end
