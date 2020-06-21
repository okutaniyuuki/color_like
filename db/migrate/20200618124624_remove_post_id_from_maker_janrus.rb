class RemovePostIdFromMakerJanrus < ActiveRecord::Migration[5.2]
  def change
    remove_column :maker_janrus, :post_id, :integer
  end
end
