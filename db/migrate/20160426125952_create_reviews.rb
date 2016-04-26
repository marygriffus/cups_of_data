class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :body
      t.integer :bra_id

      t.timestamps null: false
    end
  end
end
