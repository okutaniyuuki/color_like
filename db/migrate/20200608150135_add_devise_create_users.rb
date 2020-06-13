class AddDeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
 add_column :users, :salon_name, :string

 add_column :users, :image_id, :string

 add_column :users, :introduction, :text

 add_column :users, :post_id, :integer

 
  end
end
