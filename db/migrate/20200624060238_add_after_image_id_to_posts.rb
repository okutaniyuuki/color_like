class AddAfterImageIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :after_image_id, :string
  end
end
