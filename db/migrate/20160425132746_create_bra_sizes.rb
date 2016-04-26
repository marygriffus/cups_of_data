class CreateBraSizes < ActiveRecord::Migration
  def change
    create_table :bra_sizes do |t|
      t.string :label_size
      t.decimal :band_length
      t.decimal :stretched_band
      t.decimal :cup_width
      t.decimal :cup_depth
      t.decimal :cup_separation
      t.decimal :gore_height
      t.integer :num_hooks
      t.integer :rating_aesthetic
      t.integer :rating_comfort
      t.integer :rating_quality
      t.references :bra

      t.timestamps null: false
    end
  end
end
