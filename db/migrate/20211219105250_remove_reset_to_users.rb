class RemoveResetToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :reset_password_sent_at
  end
end
