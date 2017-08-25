class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :character, null: false
      t.string :achievement_type
      t.integer :item_id
      t.integer :woot_count
      t.integer :comment_id
      t.integer :woot_id

      t.timestamps
    end
  end
end
