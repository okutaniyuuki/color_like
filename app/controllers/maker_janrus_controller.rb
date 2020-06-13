class MakerJanrusController < ApplicationController
  def new
  end

  def index
  	@makers = Maker.all
  	@maker = Maker.new

  end
  def search
  end
end
