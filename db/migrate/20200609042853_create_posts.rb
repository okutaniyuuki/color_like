class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :post_image
      t.text :option
      t.string :color
      t.string :maker

      t.timestamps
    end
  end
end
