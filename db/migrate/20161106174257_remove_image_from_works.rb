class RemoveImageFromWorks < ActiveRecord::Migration
  def change
    remove_column :works, :image, :string
  end
end
