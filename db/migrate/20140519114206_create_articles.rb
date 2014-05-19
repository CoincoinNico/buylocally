class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
