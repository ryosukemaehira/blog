class AddRenderdContentToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :renderd_content, :text
  end
end
