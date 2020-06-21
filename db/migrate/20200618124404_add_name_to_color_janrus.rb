class AddNameToColorJanrus < ActiveRecord::Migration[5.2]
  def change
    add_column :color_janrus, :name, :string
  end
end
