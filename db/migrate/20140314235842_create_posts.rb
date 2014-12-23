class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :price
      t.string :range
      t.string :timeframe

      t.timestamps
    end
  end
end
