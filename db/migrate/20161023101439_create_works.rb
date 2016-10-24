class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.text :description
      t.text :detail
      t.text :image
      t.timestamps
    end
  end
end
