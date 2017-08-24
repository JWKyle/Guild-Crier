class CreateUsers < ActiveRecord::Migration
  def change
    create_table :user do |t|
      t.string :username, null: false
      t.string :email, null: false
      t.string :new_password

      t.timestamps
    end
  end
end
