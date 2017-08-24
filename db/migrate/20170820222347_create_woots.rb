class CreateWoots < ActiveRecord::Migration
  def change
    create_table :woots do |t|
      t.integer :user_id
      t.boolean :woot

      t.timestamps
    end
  end
end
