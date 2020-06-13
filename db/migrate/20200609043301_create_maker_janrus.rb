class CreateMakerJanrus < ActiveRecord::Migration[5.2]
  def change
    create_table :maker_janrus do |t|
      t.integer :post_id

      t.timestamps
    end
  end
end
