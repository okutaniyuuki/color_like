class AddCreateBookmark < ActiveRecord::Migration[5.2]
  def change
      add_column :bookmarks, :post_image_id, :string
  end
end
