class RemovePasswordToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :encrypted_password
  end
end
