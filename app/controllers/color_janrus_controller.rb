


class ColorJanrusController < ApplicationController


  def index

  	@posts = Post.all
    @color = ColorJanru.all


  end

end

