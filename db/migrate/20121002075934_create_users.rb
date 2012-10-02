class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :email
      t.text :about_me
      t.date :birthday
      t.boolean :active

      t.timestamps
    end
  end
end
