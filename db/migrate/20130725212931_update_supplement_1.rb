class UpdateSupplement1 < ActiveRecord::Migration
  def change
    drop_table :supplements
    create_table :supplements do |t|
      #t.integer :id  — supplied by default
      t.integer :brand_id

      t.string  :name # e.g., Super EPA Pro
      t.string  :item_number # e.g., SP610
      t.boolean :comes_in_multiple_sizes
        # if not: 
      t.string  :size 
      t.decimal :price, :precision => 5, :scale => 2

      # only one set of images and descriptions, irrespective of whther the supplement comes in multiple sizes
      t.string  :image_thumbnail_URL
      t.string  :inage_URL
      t.text    :brief_description
      t.text    :long_description
      
    end
  end
end
