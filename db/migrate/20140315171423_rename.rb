class Rename < ActiveRecord::Migration
  def change
    remove_column :posts, :post_id, :integer
    remove_column :comments, :postid, :integer
    add_column :comments, :post_id, :integer
  end

end
