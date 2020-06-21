class AddNameToMakerJanrus < ActiveRecord::Migration[5.2]
  def change
    add_column :maker_janrus, :name, :string
  end
end
