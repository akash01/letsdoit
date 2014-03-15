class CreateSubcomments < ActiveRecord::Migration
  def change
    create_table :subcomments do |t|
      t.integer :comment_id
      t.integer :user_id
      t.string :body

      t.timestamps
    end
  end
end
