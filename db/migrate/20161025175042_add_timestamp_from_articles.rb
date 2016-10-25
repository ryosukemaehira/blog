class AddTimestampFromArticles < ActiveRecord::Migration
  def change
    add_column :articles, :timestamp, :datetime
  end
end
