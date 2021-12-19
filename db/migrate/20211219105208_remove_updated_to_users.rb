class RemoveUpdatedToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :updated_at
  end
end
