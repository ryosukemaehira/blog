class CreateWorkImages < ActiveRecord::Migration
  def change
    create_table :work_images do |t|
      t.string :content
      t.integer :state
      t.references :work
      t.timestamps null: false
    end
  end
end
