

class RemoveMakerJanruIdFromColorJanrus < ActiveRecord::Migration[5.2]
  def change
    remove_column :color_janrus, :maker_janrus_id, :integer
  end
end
