

class MakerJanrusController < ApplicationController


  def index
  	@posts = Post.all

    @makers = MakerJanru.all

    #
    #
    #
    # これでセレクトボックスの中身を呼び出せる！
    # maker_janru_params[:maker_janru_name]
  end
end

