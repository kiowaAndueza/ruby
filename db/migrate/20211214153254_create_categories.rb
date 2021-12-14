class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :img
      t.string :url
      #t.timestamps
    end
  end
end
