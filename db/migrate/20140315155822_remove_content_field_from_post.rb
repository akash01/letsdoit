class RemoveContentFieldFromPost < ActiveRecord::Migration
  def change
    remove_column :posts, :content, :string
  end
end
