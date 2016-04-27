class CreateBras < ActiveRecord::Migration
  def change
    create_table :bras do |t|
      t.string :brand
      t.string :model
      t.string :image_url
      t.string :style
      t.references :user

      t.timestamps null: false
    end
  end
end
