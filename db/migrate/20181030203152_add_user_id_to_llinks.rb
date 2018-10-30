class AddUserIdToLlinks < ActiveRecord::Migration[5.2]
  def change
    add_column :llinks, :user_id, :integer
    add_index :llinks, :user_id
  end
end
