class AddContentToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :content, :text
    remove_column :posts, :user_id, :integer
    add_column :posts, :content, :text
    add_column :posts, :user_id, :integer
  end
end
