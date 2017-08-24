class CreateWoots < ActiveRecord::Migration
  def change
    create_table :woot do |t|
      t.integer :user_id
      t.boolean :woot

      t.timestamps
    end
  end
end
