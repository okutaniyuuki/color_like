class AddLikeMakerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :like_maker, :string
    add_column :users, :forte, :string

  end
end
