class AddRenderdContentToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :rendered_content, :text
  end
end
