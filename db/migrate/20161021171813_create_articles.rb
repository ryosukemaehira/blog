class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.references :category
      t.timestamps null: false
    end
  end
end
