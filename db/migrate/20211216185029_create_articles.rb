class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :img
      t.string :url
      t.string :island
      t.integer :category_id
      t.string :exturl
      t.string :info
      #t.timestamps
    end
  end
end
