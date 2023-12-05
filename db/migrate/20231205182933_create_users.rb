class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :nickname, null: false 
      t.string :login, null: false
      t.string :password, null: false
      t.string :code_word, null: false
      t.timestamps
    end

    add_index :users, :login, unique: true
  end
end
