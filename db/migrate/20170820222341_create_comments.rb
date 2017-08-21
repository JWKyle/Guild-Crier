class CreateComments < ActiveRecord::Migration
  def change
    create_table :comment do |t|
      t.integer :user_id, null: false
      t.string :body, null: false

      t.timestamps
    end
  end
end
