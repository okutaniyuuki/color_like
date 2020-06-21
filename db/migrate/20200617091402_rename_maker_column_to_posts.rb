


class RenameMakerColumnToPosts < ActiveRecord::Migration[5.2]
  def change
  	 rename_column  :posts, :maker,	:maker_janru_id
  	 rename_column  :posts, :color,	:color_janru_id
  end
end
