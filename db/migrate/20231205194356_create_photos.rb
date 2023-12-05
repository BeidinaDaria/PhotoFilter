class CreatePhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :photos do |t|
      t.references :user
      t.string :name, null: false
      t.string :url, null: false
      t.timestamps
    end

    create_table :photos_access do |t|
      t.references :access_level
      t.references :user
      t.references :photo
      t.timestamps
    end

    create_table :access_levels do |t|
      t.string :title, null: false
      t.timestamps
    end
  end
end
