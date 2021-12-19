class RemoveCreateToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :created_at
  end
end
