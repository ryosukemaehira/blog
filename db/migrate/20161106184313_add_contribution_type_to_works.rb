class AddContributionTypeToWorks < ActiveRecord::Migration
  def change
    add_column :works, :role, :string
  end
end
