class AddContentAndUseridToPost < ActiveRecord::Migration
  def change
    add_column :posts, :content, :string
    add_column :posts, :user_id, :integer
  end
end
